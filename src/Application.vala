public class Geochron.App : Gtk.Application {
    public App () {
        Object (
            application_id: "com.github.eldhrimer.geochron",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
       var main_window = new Geochron.Window ();
       add_window(main_window);
       main_window.show_all ();
    }
}
