package ru.iu7.pacman29.airmouse;

import android.support.design.widget.CoordinatorLayout;

public interface NavigationItemListener {
    void setCurrentItem(NavigationItem item);
    void setCurrentMenuItem(int id);
    ConnectedServerManager getConnectedServerManager();
    CoordinatorLayout getCoordinatorLayout();
    void clearBackstack();
}
