Use `bundle outdated` to get a list of outdated gems:

Before doing major Rails upgrades, or just to keep a relatively up-to-date stack, `bundle outdated` gives you a nice listing of which gems have newer versions available along with their version.

Example:

```
Outdated gems included in the bundle:
  * autoprefixer-rails (newest 6.3.6, installed 6.1.2) in group "default"
  * bullet (newest 5.0.0, installed 4.14.7) in group "development"
  * bundler-audit (newest 0.5.0, installed 0.4.0) in groups "development, test"
  * capybara (newest 2.7.0, installed 2.5.0) in group "test"
  ...
```
