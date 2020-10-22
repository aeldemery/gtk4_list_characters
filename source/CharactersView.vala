public enum Gtk4Demo.CharactersViewType {
    GRID_VIEW,
    COLUMN_VIEW,
}

public class Gtk4Demo.CharactersView : Gtk.Widget {
    UnicodeItemsModel character_model;

    Gtk.SingleSelection selection;
    Gtk.SignalListItemFactory factory;

    Gtk.GridView gridview;
    Gtk.ColumnView columnview;
    Gtk.ColumnViewColumn column;
    Gtk.ScrolledWindow sw;

    const string[] column_headers = {
        "Codepoint",
        "Char",
        "Name",
        "Type",
        "Break Type",
        "Combining Class",
        "Script",
    };

    static construct {
        set_layout_manager_type (typeof (Gtk.GridLayout));
    }

    public CharactersView (CharactersViewType view_type, UnicodeItemsModel model) {

        character_model = model;
        selection = new Gtk.SingleSelection (character_model);
        selection.autoselect = true;
        selection.can_unselect = false;

        var click_gesture = new Gtk.GestureClick ();
        click_gesture.released.connect (clicked_cb);
        this.add_controller (click_gesture);

        sw = new Gtk.ScrolledWindow ();
        sw.vscrollbar_policy = Gtk.PolicyType.AUTOMATIC;

        if (view_type == CharactersViewType.GRID_VIEW) {
            factory = new Gtk.SignalListItemFactory ();
            factory.setup.connect (setup_gridview_item);
            factory.bind.connect (bind_gridview_item);

            gridview = new Gtk.GridView (selection, factory);
            gridview.hexpand = gridview.vexpand = true;
            sw.set_child (gridview);
        } else if (view_type == CharactersViewType.COLUMN_VIEW) {

            columnview = new Gtk.ColumnView (selection);
            columnview.show_column_separators = true;
            columnview.hexpand = columnview.vexpand = true;

            // Column 1
            factory = new Gtk.SignalListItemFactory ();

            factory.setup.connect (setup_columnview_item);
            factory.bind.connect (bind_codepoint_item);

            column = new Gtk.ColumnViewColumn (column_headers[0], factory);
            columnview.append_column (column);

            // Column 2
            factory = new Gtk.SignalListItemFactory ();

            factory.setup.connect (setup_columnview_item);
            factory.bind.connect (bind_char_item);

            column = new Gtk.ColumnViewColumn (column_headers[1], factory);
            columnview.append_column (column);

            // Column 3
            factory = new Gtk.SignalListItemFactory ();

            factory.setup.connect (setup_columnview_item);
            factory.bind.connect (bind_name_item);

            column = new Gtk.ColumnViewColumn (column_headers[2], factory);
            columnview.append_column (column);

            // Column 4
            factory = new Gtk.SignalListItemFactory ();

            factory.setup.connect (setup_columnview_item);
            factory.bind.connect (bind_type_item);

            column = new Gtk.ColumnViewColumn (column_headers[3], factory);
            columnview.append_column (column);

            // Column 5
            factory = new Gtk.SignalListItemFactory ();

            factory.setup.connect (setup_columnview_item);
            factory.bind.connect (bind_break_type_item);

            column = new Gtk.ColumnViewColumn (column_headers[4], factory);
            columnview.append_column (column);

            // Column 6
            factory = new Gtk.SignalListItemFactory ();

            factory.setup.connect (setup_columnview_item);
            factory.bind.connect (bind_combining_class_item);

            column = new Gtk.ColumnViewColumn (column_headers[5], factory);
            columnview.append_column (column);

            // Column 7
            factory = new Gtk.SignalListItemFactory ();

            factory.setup.connect (setup_columnview_item);
            factory.bind.connect (bind_script_item);

            column = new Gtk.ColumnViewColumn (column_headers[6], factory);
            columnview.append_column (column);

            sw.set_child (columnview);
        }

        sw.set_parent (this);
    }

    protected override void dispose () {
        sw.unparent ();
        base.dispose ();
    }

    void setup_gridview_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var box = new Gtk.Box (Gtk.Orientation.VERTICAL, 10);

        var label = new Gtk.Label ("");
        label.width_chars = 2;
        label.add_css_class ("enormous");

        var provider = new Gtk.CssProvider ();
        provider.load_from_resource ("/github/aeldemery/gtk4_list_characters/styles/style.css");

        label.get_style_context ().add_provider (provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);
        label.hexpand = true;

        box.append (label);

        label = new Gtk.Label ("");
        box.append (label);

        list_item.set_child (box);
    }

    void bind_gridview_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var item = (UnicodeItem) list_item.get_item ();
        var box = (Gtk.Box)list_item.get_child ();
        var label1 = (Gtk.Label)box.get_first_child ();
        var label2 = (Gtk.Label)label1.get_next_sibling ();

        label1.label = item.codepoint.to_string ();
        label2.label = "U+%.4X".printf (item.codepoint);
    }

    void setup_columnview_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var label = new Gtk.Label ("");
        label.max_width_chars = 30;
        label.ellipsize = Pango.EllipsizeMode.END;
        list_item.set_child (label);
    }

    void bind_codepoint_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var label = (Gtk.Label)list_item.get_child ();
        var item = (UnicodeItem) list_item.get_item ();

        label.label = "U+%.4X".printf (item.codepoint);
    }

    void bind_char_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var label = (Gtk.Label)list_item.get_child ();
        var item = (UnicodeItem) list_item.get_item ();

        label.label = item.codepoint.to_string ();
    }

    void bind_name_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var label = (Gtk.Label)list_item.get_child ();
        var item = (UnicodeItem) list_item.get_item ();

        label.label = item.name;
        label.tooltip_text = item.name;
    }

    void bind_type_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var label = (Gtk.Label)list_item.get_child ();
        var item = (UnicodeItem) list_item.get_item ();

        label.label = item.type_name;
    }

    void bind_break_type_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var label = (Gtk.Label)list_item.get_child ();
        var item = (UnicodeItem) list_item.get_item ();

        label.label = item.break_type;
    }

    void bind_combining_class_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var label = (Gtk.Label)list_item.get_child ();
        var item = (UnicodeItem) list_item.get_item ();

        label.label = item.codepoint.to_string ();
    }

    void bind_script_item (Gtk.SignalListItemFactory factory, Gtk.ListItem list_item) {
        var label = (Gtk.Label)list_item.get_child ();
        var item = (UnicodeItem) list_item.get_item ();

        label.label = item.script;
    }

    void clicked_cb (Gtk.GestureClick gesture, int n_press, double x, double y) {
        var item = (UnicodeItem) selection.get_selected_item ();
        var main_win = (Gtk.Window) this.get_ancestor (typeof (Gtk.Window));
        var dialog = new DisplayDialog (item, main_win);
        dialog.present ();
    }
}