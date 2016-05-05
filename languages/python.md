Python
======

Standard library
----------------


Snippets
--------

Get a string representation of a timestamp given certain formatters:

```python
from time import strftime
now = strftime('%Y-%m-%d')  # 2016-04-21
```

Validate type of input text:

```python
while True:
    try:
        x = int(input("Please enter a number: "))
        break
    except ValueError:
        print "Invalid number"
```

Generate random CSV:

```python
from random import choice
from string import letters
def generate_csv(num_rows, num_columns):
    rows = []
    for i in range(num_rows):
        row = []
        for i in range(num_columns):
            row.append(''.join([choice(letters) for n in range(10)]))
        rows.append(row)
    return '\n'.join(','.join(row) for row in rows)
```
