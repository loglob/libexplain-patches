# libexplain-patches
Patches to get libexplain working under linux 5.14 (also fixes some version conflicts with bison).

They get it to run but break some features (some ioctl stuff relying on deprecated kernel modules).

As a result, the patched library does not pass all tests.

## Usage
Run `make patch` to download and patch version 1.4 of libexplain.

To apply the patches to a different version,
move it to `./libexplain` relative to project root
and run `make patch`

Afterwards, do the normal build process with `./configure && make`
