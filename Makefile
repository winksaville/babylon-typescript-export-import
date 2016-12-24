TSC_FLAGS += --target ES5
TSC_FLAGS += --noEmitOnError
TSC_FLAGS += --noUnusedLocals
TSC_FLAGS += --noUnusedParameters
TSC_FLAGS += --noIMplicitAny
TSC_FLAGS += --noImplicitReturns
TSC_FLAGS += --NoImplicitThis
TSC_FLAGS += --alwaysStrict
#TSC_FLAGS += --allowJs # is not allowed if --declaration is also set
TSC_FLAGS += --declaration
TSC_FLAGS += --experimentalDecorators
TSC_FLAGS += --forceConsistentCasingInFileNames
TSC_FLAGS += --strictNullChecks
TSC_FLAGS += --module 'commonjs'

bundle.js: test.js Table.js js/babylon.d.ts Makefile package.json
	npm run browserify

test.js: test.ts Table.ts js/babylon.d.ts Makefile package.json
	rm -f test.js test.d.ts # Remove so on errors we won't see old files
	rm -f Table.js Table.d.ts # Remove so on errors we won't see old files
	tsc $(TSC_FLAGS) test.ts js/babylon.d.ts

# Install node modules
.PHONY: install-deps
install-deps:
	npm install

.PHONY: clean
clean:
	rm -f *.js *.d.ts

.PHONY: distclean
distclean: clean
	rm -rf node_modules

