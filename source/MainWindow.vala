public class Gtk4Demo.MainWindow : Gtk.ApplicationWindow {
    public MainWindow (Gtk.Application app) {
        Object (application: app);

        this.default_width = 800;
        this.default_height = 600;
        this.title = "Characters Demo";

        var header = new Gtk.HeaderBar ();
        this.set_titlebar (header);

        var model = new UnicodeItemsModel ();

        var stack_switcher = new Gtk.StackSwitcher ();
        var stack = new Gtk.Stack ();
        stack.add_titled (new CharactersView (CharactersViewType.GRID_VIEW, model), "GridView", "Character Grid");
        stack.add_titled (new CharactersView (CharactersViewType.COLUMN_VIEW, model), "ListView", "Character List");

        stack_switcher.stack = stack;
        header.set_title_widget (stack_switcher);

        //var view = new CharactersView ();
        this.set_child (stack);
    }
}
