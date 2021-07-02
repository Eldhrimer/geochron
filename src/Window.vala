public class Geochron.Window : Hdy.ApplicationWindow {
    public Window () {
        Object (
            application: application
        );
    }

    construct {
        Hdy.init ();
        default_height = 800;
        default_width = 300;

        var header_bar = new Hdy.HeaderBar () {
        show_close_button = true
        };

        unowned Gtk.StyleContext header_context = header_bar.get_style_context ();
        header_context.add_class ("default-decoration");
        header_context.add_class (Gtk.STYLE_CLASS_FLAT);

        // Timeline
        var timeline = new Gtk.Grid () {
            column_spacing = 10,
            row_spacing = 6
        };

        var super_eon = new Gtk.Grid () {
            column_spacing = 10,
            row_spacing = 6
        };
        var eon = new Gtk.Grid () {
            column_spacing = 10,
            row_spacing = 6
        };
        var era = new Gtk.Grid (){
            column_spacing = 10,
            row_spacing = 6
        };
        var period = new Gtk.Grid (){
            column_spacing = 10,
            row_spacing = 6
        };
        var period2 = new Gtk.Grid (){
            column_spacing = 10,
            row_spacing = 6
        };
        var epoch = new Gtk.Grid (){
            column_spacing = 10,
            row_spacing = 6
        };
        var age = new Gtk.Grid ();

        eon.attach (era, 1, 0);
        era.attach (period, 1, 0);
        era.attach (period2, 1, 1);
        period.attach (epoch, 1, 0);
        epoch.attach (age, 1, 0);

        eon.attach (new Gtk.Label ("Phaneorozoic"), 0, 0);

        era.attach (new Gtk.Label ("Cenozoic"), 0, 0);
        period.attach (new Gtk.Label ("Quaternary"), 0, 0);
        period.attach (new Gtk.Label ("Neogene"), 0, 1);
        period.attach (new Gtk.Label ("Paleogene"), 0, 2);

        era.attach (new Gtk.Label ("Mesozoic"), 0, 1);
        period2.attach (new Gtk.Label ("Cretaceous"), 0, 0);
        period2.attach (new Gtk.Label ("Jurassic"), 0, 1);
        period2.attach (new Gtk.Label ("Triassic"), 0, 2);

        era.attach (new Gtk.Label ("Paleozoic"), 0, 2);

        var main_layout = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);

        main_layout.add (header_bar);
        main_layout.add (eon);
        main_layout.show_all ();

        var window_handle = new Hdy.WindowHandle ();
        window_handle.add (main_layout);

        add (window_handle);

    }

}
