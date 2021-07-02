public class Geochron : Gtk.Application {
    public Geochron () {
        Object (
            application_id: "com.github.eldhrimer.geochron",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Geochron"
        };
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new Geochron ().run (args);
    }
}
