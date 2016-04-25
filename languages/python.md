Python
======

Standard library
----------------

Get a string representation of a timestamp given certain formatters:

```python
from time import strftime
now = strftime('%Y-%m-%d')  # 2016-04-21
```

Snippets
--------

Validate type of input text:

```python
while True:
    try:
        x = int(input("Please enter a number: "))
        break
    except ValueError:
        print "Invalid number"
```
