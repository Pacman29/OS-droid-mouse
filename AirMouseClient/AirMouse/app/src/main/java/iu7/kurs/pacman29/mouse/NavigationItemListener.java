package iu7.kurs.pacman29.mouse;

import android.support.design.widget.CoordinatorLayout;

public interface NavigationItemListener {
    void setCurrentItem(NavigationItem item);
    void setCurrentMenuItem(int id);
    ConnectedServerManager getConnectedServerManager();
    CoordinatorLayout getCoordinatorLayout();
    void clearBackstack();
}
