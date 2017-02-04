# Running a local script on Heroku

## One-liner

```
echo "puts User.count" | heroku run console --app=my-heroku-app --no-tty
```

## Larger script

```
cat some_script.rb | heroku run console --app=my-heroku-app --no-tty
```
