all: compile install

compile:
	@find src/coffee -name '*.coffee' | xargs coffee -c -o build/scripts

install:
	mkdir -p build
	mkdir -p build/art
	mkdir -p build/css
	mkdir -p build/scripts
	cp -R src/html/* build/
	cp -R src/art/* build/art/
	cp -R src/css/* build/css/
	cp -R src/ecma/* build/scripts/

clean:
	rm -r build

run:
	cd build; python -m SimpleHTTPServer 8000
