## How to use Python decorators

```python
def some_function(funct):
  def another_function(param):
    if param:
      return 3+2
    else:
      return funct(param)
  return another_function

@some_function
def other_function(param):  
  return 3+3
  
other_function(True) #=> 5
other_function(False)#=> 6
```
