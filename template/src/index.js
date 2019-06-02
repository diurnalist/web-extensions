// Place actual extension code here.

const NAMESPACE = '_myWebExtension';

function doThing() {}

// Example of how to ensure extension doesn't load twice
if (! window[NAMESPACE + 'Init']) {
  doThing();
  window[NAMESPACE + 'Init'] = true;
}
