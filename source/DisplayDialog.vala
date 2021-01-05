// [GtkTemplate (ui = "/github/aeldemery/gtk4_list_characters/layouts/dialog.ui")]
public class Gtk4Demo.DisplayDialog : Gtk.Dialog {
    // [GtkChild]
    Gtk.Label lbl_char;

    // [GtkChild]
    Gtk.Label lbl_codepoint;

    // [GtkChild]
    Gtk.Label lbl_name;

    // [GtkChild]
    Gtk.Label lbl_script;

    // [GtkChild]
    Gtk.Label lbl_type;

    // [GtkChild]
    Gtk.Label lbl_break_type;

    // [GtkChild]
    // Gtk.Button btn_ok;

    static construct {
    }

    public DisplayDialog (UnicodeItem item, Gtk.Window transient_for_win) {
        Object (use_header_bar: 1, destroy_with_parent: true);
        this.transient_for = transient_for_win;

        var btn = (Gtk.Button) this.add_button ("Ok", Gtk.ResponseType.OK);
        btn.clicked.connect ((button) => {
            this.destroy ();
        });
        var box = this.get_content_area ();
        var hbox = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 6);
        var vbox = new Gtk.Box (Gtk.Orientation.VERTICAL, 12);
        box.homogeneous = true;
        box.margin_bottom = box.margin_end = box.margin_start = box.margin_top = 12;
        hbox.homogeneous = true;
        vbox.homogeneous = true;

        lbl_char = new Gtk.Label (item.codepoint.to_string ());
        lbl_char.width_chars = 2;
        lbl_char.add_css_class ("enormous");

        var provider = new Gtk.CssProvider ();
        provider.load_from_resource ("/github/aeldemery/gtk4_list_characters/styles/style.css");

        lbl_char.get_style_context ().add_provider (provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);
        lbl_char.hexpand = true;
        hbox.append (lbl_char);

        lbl_codepoint = new Gtk.Label ("U+%.4X".printf (item.codepoint));
        lbl_codepoint.xalign = 0;
        lbl_codepoint.selectable = true;
        lbl_name = new Gtk.Label (item.name);
        lbl_name.xalign = 0;
        lbl_script = new Gtk.Label (item.script);
        lbl_script.xalign = 0;
        lbl_type = new Gtk.Label (item.type_name);
        lbl_type.xalign = 0;
        lbl_break_type = new Gtk.Label (item.break_type);
        lbl_break_type.xalign = 0;

        vbox.append (lbl_codepoint);
        vbox.append (lbl_name);
        vbox.append (lbl_script);
        vbox.append (lbl_type);
        vbox.append (lbl_break_type);

        hbox.append (vbox);
        box.append (hbox);
    }

    //  [GtkCallback]
    //  void on_btn_ok_clicked (Gtk.Button button) {
    //      this.hide ();
    //  }
}