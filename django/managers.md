Just like Rails Django framework has analog to ActiveRecord to handle work with database and make the abstraction layer above tables.

But unlike Rails they decided to move all this "table related" job to one more object behind model.

For example, if we have simple model:

```python
class Event(models.Model):
    title = models.CharField(max_length=200)
```

and want to obtain all events started with "Super event" string, what would we do in Rails in that case:

```ruby
class Event < ActiveRecord::Base
    scope :started_with_super_event, -> { where("title like 'Super event%'") }
end
```

and call it with

```ruby
    Event.started_with_super_event
```

But in Django we need to wrap it into the special object named ["Manager"](https://docs.djangoproject.com/en/1.8/topics/db/managers/)
They've done it mostly to divide the "table-level" logic from "row-level", and also to be able to switch between different Managers for one model, which could be useful
 for example when you are in admin interface, or user interface.

