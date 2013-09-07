all: compile install

compile:
	@find src/coffee -name '*.coffee' | xargs coffee -c -o build/scripts

install:
	cp -R src/html/* build/
	cp -R src/css/* build/css/
	cp -R src/ecma/* build/scripts/
