[GtkTemplate (ui = "/github/aeldemery/layouts/dialog.ui")]
public class Gtk4Demo.DisplayDialog : Gtk.Dialog {
    [GtkChild]
    Gtk.Label lbl_char;

    [GtkChild]
    Gtk.Label lbl_codepoint;

    [GtkChild]
    Gtk.Label lbl_name;

    [GtkChild]
    Gtk.Label lbl_script;

    [GtkChild]
    Gtk.Label lbl_type;

    [GtkChild]
    Gtk.Label lbl_break_type;

    public DisplayDialog (UnicodeItem item) {
        this.destroy_with_parent = true;

        lbl_char.label = item.codepoint.to_string ();
        lbl_codepoint.label = "U+%.4X".printf (item.codepoint);
        lbl_name.label = item.name;
        lbl_script.label = item.script;
        lbl_type.label = item.type_name;
        lbl_break_type.label = item.break_type;
    }

    [GtkCallback]
    void on_btn_ok_clicked (Gtk.Button button) {
        this.hide ();
    }
}