# Test we can export a class which extends BABYLON.Mesh

At a minimum you need to install `Node.js`, `npm`, `tsc` and `babylon`.
see [npmjs.com installing Node.js and updating npm](https://docs.npmjs.com/getting-started/installing-node)
for instructions for Node.js and npm. To install tsc [see here](https://www.typescriptlang.org/index.html#download-links)
and BabylonJS see [this](http://www.babylonjs.com/).

I did *NOT* figure this out on my own, the most straight forward I example on the internet I could find was
by [Understanding JavaScript Modules: Bundling & Transpiling](https://www.sitepoint.com/javascript-modules-bundling-transpiling/) by Mark Brown. The [Integrating with Build Tools](https://www.typescriptlang.org/docs/handbook/integrating-with-build-tools.html) provides additional information but it was to sparse for me to understand. The advantage of that
information is it looks like they do the tsc compile and "bundling" in with one step. But what
I've go now is "good enough".

Now clone this repo and make it the default directory:
```
git clone https://github.com/winksaville/babylon-typescript-export-import
cd babylon-typescript-export-import
```

Install the devDependencies defined in package.json:
```
npm install
```

compile the `test.ts` and `Table.ts` to `*.d.ts` and `*.js`
```
tsc test.ts js/babylon.d.ts
```

Finally run the browserify command in the package.json which merges the \*.js files into bundle.js
```
npm run browserify
```

You can now use chrome to view the index.html by pointing it to:
```
file:///<path_to_parent>/babylon-typescript-export-import/index.html
```

If you have `make` installed then run the following two commands after installing Node.js, npm and tsc
```
make install-deps
make
```
