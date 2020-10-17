public class Gtk4Demo.UnicodeItemsModel : Object, ListModel {

    GLib.ListStore printable_items;
    GLib.ListStore non_printable_items;

    public bool only_printable { get; set; default = true; }

    public UnicodeItemsModel () {
        printable_items = new GLib.ListStore (typeof (UnicodeItem));
        non_printable_items = new GLib.ListStore (typeof (UnicodeItem));

        try {
            var bytes = resources_lookup_data ("/github/aeldemery/gtk4_list_characters/ucdnames.data", GLib.ResourceLookupFlags.NONE);
            var variant = new Variant.from_bytes (new VariantType ("a(us)"), bytes, true);
            var iter = new VariantIter (variant);

            uint codepoint;
            string name;

            while (iter.next ("(us)", out codepoint, out name)) {

                if (codepoint == 0) continue;

                if (((unichar) codepoint).isprint ()) {
                    printable_items.append (new UnicodeItem (codepoint, name));
                } else {
                    non_printable_items.append (new UnicodeItem (codepoint, name));
                }
            }
        } catch (Error err) {
            error ("Couldn't load resource: %s\n", err.message);
        }
    }

    public GLib.Object ? get_item (uint position) {
        if (only_printable) {
            return printable_items.get_item (position);
        } else {
            return non_printable_items.get_item (position);
        }
    }

    public uint get_n_items () {
        if (only_printable) {
            return printable_items.get_n_items ();
        } else {
            return non_printable_items.get_n_items ();
        }
    }

    public GLib.Type get_item_type () {
        return typeof (UnicodeItem);
    }
}