package ru.iu7.pacman29.airmouse;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

import ru.iu7.pacman29.airmouse.messages.MouseClickMessage;
import ru.iu7.pacman29.airmouse.messages.MouseMoveMessage;
import ru.iu7.pacman29.airmouse.messages.MouseScrollMessage;
import ru.iu7.pacman29.airmouse.view.TouchPadView;

public class TouchPadFragment extends NavigationItem {
    private TouchPadView touchPad;

    private Server connectedServer;

    public TouchPadFragment() {
        itemId = R.id.item_connected_server_touchpad;
    }

    @Override
    public void onCreate(Bundle savedStateInstance) {
        super.onCreate(savedStateInstance);
        super.setHasOptionsMenu(true);
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        inflater.inflate(R.menu.air_mouse, menu);
        super.onCreateOptionsMenu(menu, inflater);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_server_disconnect:
                connectedServer.disconnect();
                return true;
        }

        return false;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_touch_pad, container, false);

        touchPad = (TouchPadView) view.findViewById(R.id.touchPadView);

        touchPad.setOnMoveListener((dx, dy) -> connectedServer.sendMessage(new MouseMoveMessage(dx, dy)));

        touchPad.setOnScrollListener(value -> connectedServer.sendMessage(new MouseScrollMessage(value)));

        touchPad.setOnClickListener((TouchPadView.OnClickListener.Button button) -> connectedServer.sendMessage(new MouseClickMessage(button)));

        return view;
    }

    @Override
    public void onStart() {
        super.onStart();
        connectedServer = listener.getConnectedServerManager().getConnectedServer();

        //read server settings and update touchPad
        ServerSettings settings = listener.getConnectedServerManager().getConnectedServerSettings();
        touchPad.setSensitivity(settings.touchPadSensitivity.getValue());
        touchPad.setScrollDelay(settings.scrollDelay.getValue());
    }

    @Override
    public void onStop() {
        super.onStop();
        connectedServer = null;
    }
}
