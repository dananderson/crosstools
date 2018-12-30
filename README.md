# crosstools

Compiled toolchain for creating ARM-based Gallery builds on Ubuntu 18.4 (64 bit).

crosstools contains a GCC 6.3.1 cross-compiling toolchain. The sysroot contains ARM 6 binaries and SDL 2.0.8 installed. The toolchain has successfully procuded binaries for Raspberry Pi Zero, Raspberry Pi 2/3, PlayStation Classic and S/NES Classic systems.


# Cross-Compiling Node Modules

crosstools is primarily used to cross-complile native NodeJS modules. Here is an example of how to cross-compile an ARM 7 module for Raspberry Pi 2/3.

```
TOOLCHAIN=crosstools/x64-gcc-6.3.1/arm-rpi-linux-gnueabihf/bin/arm-rpi-linux-gnueabihf-

# Prevent the build machine's cflags and ldflags to be set by node-gyp.
export npm_config_target_arch=unknown
export npm_config_arch=unknown

# Set arch flags for Raspberry Pi 2/3
CFLAGS="-Wl,--verbose -march=armv7-a -mcpu=cortex-a7 -mfpu=neon-vfpv4"
LDFLAGS="-Wl,--verbose -march=armv7-a -mcpu=cortex-a7 -mfpu=neon-vfpv4"

# Expose crosstools to node-gyp
export CC="${TOOLCHAIN}gcc ${CLAGS}"
export CXX="${TOOLCHAIN}g++ ${CFLAGS}"
export AR=${TOOLCHAIN}ar
export LINK="${TOOLCHAIN}g++ ${LDFLAGS}"
export RANLIB=${TOOLCHAIN}ranlib
export STRIP=${TOOLCHAIN}strip
export OBJCOPY=${TOOLCHAIN}objcopy
export OBJDUMP=${TOOLCHAIN}objdump                                               
export NM=${TOOLCHAIN}nm
export AS=${TOOLCHAIN}as

npm install
```

# Acknowledgement

crosstools is based on <https://github.com/rvagg/rpi-newer-crosstools>.
