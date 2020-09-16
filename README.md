# crosstools

Compiled toolchain for building NodeJS C++ addons for ARM devices on Ubuntu 18.4 (64 bit).

- Contains a GCC 6.3.1 cross-compiling toolchain for ARM 6 and ARM 7 targets.
- Uses apt aarch64-linux-gnu-gcc-6 and aarch64-linux-gnu-g++-6 for ARM 8 (64-bit) targets.
- Script to cross compile NodeJS modules with yarn, npm or node-gyp.
- Compiles NodeJS C++ addons for Raspberry Pi, Raspberry Pi Zero, S/NES Classic and Playstation Classic devices.

# Usage

crosstools contains a wrapper script to run yarn or npm with the cross compiler configured for a device profile.

```
./bin/cross rpi yarn
```
```
./bin/cross rpizero npm install
```
```
./bin/cross arm64 node-gyp rebuild --jobs max
```

## Available Device Profiles

- rpi: Raspberry Pi 2/3
- rpizero: Raspberry Pi Zero
- nclassic: S/NES Classic
- psclassic: Playstation Classic

# Acknowledgement

crosstools toolchain is based on <https://github.com/rvagg/rpi-newer-crosstools>.
