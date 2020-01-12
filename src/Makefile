MAKEFLAGS += --no-builtin-rules

.SUFFIXES:

CCFLAGS = -nostartfiles -static -Os -fomit-frame-pointer -fno-exceptions -fno-asynchronous-unwind-tables -fno-unwind-tables -Wl,--build-id=none,--omagic
STRIP_FLAGS = -s -R .eh_frame -R .eh_frame_ptr -R .eh_frame_hdr -R .comment

TARGETS=true.arm64 true.alpha true.armv6 true.armv7 true.hppa true.386 true.m68k true.mips true.mipsel true.mips64 true.mips64el true.ppc true.ppc64 true.ppc64le true.riscv64 true.s390x true.sh4 true.sparc64 true.amd64

all: ${TARGETS}

true.arm64: true.c
	aarch64-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	aarch64-linux-gnu-strip ${STRIP_FLAGS} $@

true.alpha: true.c
	alpha-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	alpha-linux-gnu-strip ${STRIP_FLAGS} $@

true.armv6: true.c
	arm-linux-gnueabi-gcc -o $@ ${CCFLAGS} $<
	arm-linux-gnueabi-strip ${STRIP_FLAGS} $@

true.armv7: true.c
	arm-linux-gnueabihf-gcc -o $@ ${CCFLAGS} $<
	arm-linux-gnueabihf-strip ${STRIP_FLAGS} $@

true.hppa: true.c
	hppa-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	hppa-linux-gnu-strip ${STRIP_FLAGS} $@

#true.hppa64: true.c
#	hppa64-linux-gnu-gcc -o $@ ${CCFLAGS} $<
#	hppa64-linux-gnu-strip ${STRIP_FLAGS} $@

true.386: true.c
	i686-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	i686-linux-gnu-strip ${STRIP_FLAGS} $@

true.m68k: true.c
	m68k-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	m68k-linux-gnu-strip ${STRIP_FLAGS} $@

true.mips: true.c
	mips-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	mips-linux-gnu-strip ${STRIP_FLAGS} $@

true.mipsel: true.c
	mipsel-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	mipsel-linux-gnu-strip ${STRIP_FLAGS} $@

true.mips64: true.c
	mips64-linux-gnuabi64-gcc -o $@ ${CCFLAGS} $<
	mips64-linux-gnuabi64-strip ${STRIP_FLAGS} $@

true.mips64el: true.c
	mips64el-linux-gnuabi64-gcc -o $@ ${CCFLAGS} $<
	mips64el-linux-gnuabi64-strip ${STRIP_FLAGS} $@

true.ppc: true.c
	powerpc-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	powerpc-linux-gnu-strip ${STRIP_FLAGS} $@

true.ppc64: true.c
	powerpc64-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	powerpc64-linux-gnu-strip ${STRIP_FLAGS} $@

true.ppc64le: true.c
	powerpc64le-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	powerpc64le-linux-gnu-strip ${STRIP_FLAGS} $@

true.riscv64: true.c
	riscv64-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	riscv64-linux-gnu-strip ${STRIP_FLAGS} $@

true.s390x: true.c
	s390x-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	s390x-linux-gnu-strip ${STRIP_FLAGS} $@

true.sh4: true.c
	sh4-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	sh4-linux-gnu-strip ${STRIP_FLAGS} $@

true.sparc64: true.c
	sparc64-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	sparc64-linux-gnu-strip ${STRIP_FLAGS} $@

true.amd64: true.c
	x86_64-linux-gnu-gcc -o $@ ${CCFLAGS} $<
	x86_64-linux-gnu-strip ${STRIP_FLAGS} $@

clean: ${TARGETS}
	rm -f $^

.PHONY: all clean
