# crosstools

Compiled toolchain for building NodeJS modules for ARM devices on Ubuntu 18.4 (64 bit).

- Contains a GCC 6.3.1 cross-compiling toolchain with SDL 2.0.8 installed.
- Script to cross compile NodeJS modules with yarn or npm.
- Compiles NodeJS modules for Raspberry Pi, Raspberry Pi Zero, S/NES Classic and Playstation Classic devices.

# Usage

crosstools contains a wrapper script to run yarn or npm with the cross compiler configured for a device profile.

```
./bin/cross rpi yarn
```
```
./bin/cross rpizero npm install
```

## Available Device Profiles

- rpi: Raspberry Pi 2/3
- rpizero: Raspberry Pi Zero
- nclassic: S/NES Classic
- psclassic: Playstation Classic

# Acknowledgement

crosstools is based on <https://github.com/rvagg/rpi-newer-crosstools>.
