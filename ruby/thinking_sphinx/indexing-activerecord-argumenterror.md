# Thinking Sphinx issues when upgrading Rails / ActiveRecord

When upgrading ActiveRecord we sometimes see an issue related to Thinking Sphinx, which manifests itself somewhat like this:

```ruby
$ rake ts:index

Generating configuration to /home/rof/src/github.com/legelisten/legelisten/config/development.sphinx.conf
rake aborted!
ArgumentError: wrong number of arguments (given 3, expected 2)
...
```

This can have a couple of known causes:

1. The `joiner` gem that TS uses might need upgrading to support the new ActiveRecord API.
2. `polyamorous` (now part of `ransack`) might need upgrading to support the new ActiveRecord API.

The `ransack` gem is used by `activeadmin`, which is what we use to build our administration tool, thus we might need to upgrade the `activeadmin` gem.
