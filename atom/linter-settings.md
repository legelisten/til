## To make atom lint with rubocop

in atom environment:

```shell
gem install rubocop
gem install rubocop-rspec
```

change ~/.atom/config.cson file (add to the bottom):

```
"linter-rubocop":
    command: "rubocop -R --require rubocop-rspec"
```
