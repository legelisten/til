This problem occurs now and then when committing using overcommit with `rails_best_practices`, causing it to fail:

```
(ripper):6: regexp encoding option 'e' differs from source encoding 'UTF-8'
```

I've found that this simply camouflages some other failure, like a law of demeter violation for example.

One workaround is to simply run `rails_best_practices` manually, fix any warnings it outputs, and then try to commit again. You should not see the ripper warning.
