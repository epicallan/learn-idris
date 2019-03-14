DEFAULT: build

build: MAKE -C tdd

all: +$(MAKE) -C tdd

clean: +$(MAKE) -C tdd
