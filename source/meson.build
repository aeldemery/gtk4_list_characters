sources = files (
    'Main.vala',
    'MainWindow.vala',
    'CharactersView.vala',
    'UnicodeItem.vala',
    'UnicodeItemsModel.vala',
)

sources += project_resources

dependencies = [
    dependency ('gtk4', version: '>=3.99.3'),
    dependency ('glib-2.0'),
    dependency ('gobject-2.0'),
    dependency ('pangocairo'),
]

executable (
    meson.project_name (),
    sources: sources,
    dependencies: dependencies,
    install: true,
)