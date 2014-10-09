# targets

all: build

build: deps
	./node_modules/.bin/grunt smush-components

clean:
	rm -rfv assets/
	rm -rfv bower_components/
	rm -rfv node_modules/

deps: deps-node deps-bower

deps-bower: deps-node bower_components

deps-node: node_modules

# file rules

bower_components: bower.json
	./node_modules/.bin/bower install
	touch $@

node_modules: package.json
	npm install
	touch $@
