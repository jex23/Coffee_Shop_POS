package CoffeShop;

import javax.swing.ImageIcon;

/**
 *
 * @author jenalyn
 */
public class IconLoader {
    private static final String ICON_PATH = "icon/kape.png"; 

    // Method to load and return the icon
    public static ImageIcon getIcon() {
        return new ImageIcon(IconLoader.class.getResource("/" + ICON_PATH));
    }
}
