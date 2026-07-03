# glad

This repo is a repackaging of [glad1](https://glad.dav1d.de/), in the usual directory format of my projects.

This is mostly for internal use, but you *can* also use this repo to get glad for yourself. To build this manually:
```bash
git clone https://github.com/marralesfios/glad
cd glad
make setup
make
```
then, copy the `glad` and `KHR` subdirectories in `src/include` into your own includes directory, and copy the built `lib/libglad.a` into your own static libraries directory.
