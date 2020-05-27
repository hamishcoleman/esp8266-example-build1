Modern Debian ships with a toolchain for the "xtensa-lx106" used in the
ESP8266, however most of the online tutorials are for the steps needed to
build the entire toolchain yourself.

It was surprisingly hard to find a combination of steps that worked with
modern toolchains.

To try and document a working and fully automated example, using the OS
provided GCC and binutils.

This example builds using the https://github.com/cnlohr/esp82xx framework.
There are obviously some improvements that could be made to make this less
of a hack, but my first intent was to build a working demonstrator.

# Usage:

- `make build-dep`
- `make all`
