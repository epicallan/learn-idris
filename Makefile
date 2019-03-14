DEFAULT: build

clean:
	idris --clean tdd-in-idris/tdd-in-idris.ipkg

all: install

install: build
	idris --install tdd-in-idris/tdd-in-idris.ipkg

build:
idris --build tdd-in-idris/tdd-in-idris.ipkg
