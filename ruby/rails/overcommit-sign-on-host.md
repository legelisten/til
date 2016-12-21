Sometimes we the overcommit setup may have changed, and you need to run `overcommit --sign` for it to work again.

Examples of errors:

```
$ overcommit --sign 

Problem loading '.overcommit_gems.rb': Your bundle is locked to activesupport (4.2.7.1), but that version could not be found in any of the sources listed in your Gemfile. If you haven't changed sources, that means the author of activesupport (4.2.7.1) has removed it. You'll need to update your bundle to a different version of activesupport (4.2.7.1) that hasn't been removed in order to install.

Try running:
bundle install --gemfile=.overcommit_gems.rb
```

The thing is that overcommit looks at your regular Gemfile, not the one we have set up specifically for overcommit. Thus the trick is to set up the `BUNDLE_GEMFILE` variable to point to the overcommit gemfile. If you run the signing command like this, it should work:

```BUNDLE_GEMFILE=.overcommit_gems.rb overcommit --sign```
