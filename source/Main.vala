int main (string[] args) {
    var app = new Gtk4Demo.ListCharactersApp ();
    return app.run (args);
}

public class Gtk4Demo.ListCharactersApp : Gtk.Application {
    public ListCharactersApp () {
        Object (application_id: "github.aeldemery.gtk4_list_characters",
                flags : GLib.ApplicationFlags.FLAGS_NONE);
    }

    protected override void activate () {
        var win = this.active_window;
        if (win == null) {
            win = new Gtk4Demo.MainWindow (this);
        }
        win.present ();
    }
}