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

Generate random CSV:

```python
def generate_csv(header, num_rows):
    rows = [header]
    for i in range(num_rows):
        row = []
        for i in range(len(header)):
            row.append(''.join([choice(letters) for n in range(10)]))
        rows.append(row)
    return '\n'.join(','.join(row) for row in rows)
```
