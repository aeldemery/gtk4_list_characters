sources = files (
    'Main.vala',
    'MainWindow.vala',
    'CharactersView.vala',
    'UnicodeItem.vala',
    'UnicodeItemsModel.vala',
    'DisplayDialog.vala',
)

dependencies = [
    dependency ('gtk4', version: '>=3.99.3'),
    dependency ('glib-2.0', version: '>=2.50'),
    dependency ('gobject-2.0'),
    dependency ('pangocairo'),
]

sources += project_resources

vala_args = [
    '--enable-experimental',
    #'--gresourcesdir=' + join_paths ('../resources/'),
]
executable (
    meson.project_name (),
    sources: sources,
    vala_args: vala_args,
    dependencies: dependencies,
    install: true,
)