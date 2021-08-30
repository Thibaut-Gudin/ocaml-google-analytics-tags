# ocaml-google-analytics-tags
Binding to the `analytics.js` library (also know as 'Google Analytics
tags') using gen_js_api

## What does ocaml-google-analytics-tags do ?

This library allow you to use the javascript library `analytics.js` into
your ocaml app.

See the [analytics.js official
API](https://developers.google.com/analytics/devguides/collection/analyticsjs/)
for more details.

## How to install and compile your project by using this plugin ?

You can use opam by pining the repository with:
```Shell
opam pin add ga_tags
https://github.com/Thibaut-Gudin/ocaml-google-analytics-tags
```

to compile your project, use:
```Shell
dune build @install
```

Finally, install the "ga_tags" plugin with
```Shell
cordova plugin add ga_tags
```

## How to use it?
[TODO]
