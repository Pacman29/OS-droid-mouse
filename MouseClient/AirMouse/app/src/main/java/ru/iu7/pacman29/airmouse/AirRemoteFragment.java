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
import ru.iu7.pacman29.airmouse.view.AirRemoteView;
import ru.iu7.pacman29.airmouse.view.TouchPadView;

public class AirRemoteFragment extends NavigationItem {
    private AirRemoteView airRemote;
    private Server connectedServer;

    private MenuItem keyboardItem;

    public AirRemoteFragment() {
        itemId = R.id.item_connected_server_airremote;
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
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_air_remote, container, false);

        airRemote = (AirRemoteView) view.findViewById(R.id.airRemoteView);

        airRemote.setOnMoveListener((dx, dy) -> connectedServer.sendMessage(new MouseMoveMessage(dx, dy)));

        airRemote.setOnScrollListener(value -> connectedServer.sendMessage(new MouseScrollMessage(value)));

        airRemote.setOnClickListener((TouchPadView.OnClickListener.Button button) -> connectedServer.sendMessage(new MouseClickMessage(button)));

        return view;
    }

    @Override
    public void onStart() {
        super.onStart();

        connectedServer = listener.getConnectedServerManager().getConnectedServer();

        ServerSettings settings = listener.getConnectedServerManager().getConnectedServerSettings();
        airRemote.setSensitivity(settings.airRemoteSensitivity.getValue());
        airRemote.setMoveDelay(settings.moveDelay.getValue());
        airRemote.setScrollDelay(settings.scrollDelay.getValue());

        airRemote.startSensor();
    }

    @Override
    public void onStop() {
        super.onStop();

        airRemote.stopSensor();
        connectedServer = null;
    }
}
