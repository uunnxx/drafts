## Cheatsheets

- Remove incomplete rows or columns with Pandas
```python
data  = {
    'city': ['Munich', 'Berlin', 'Erkner', 'Magdeburg', 'Leipzig'],
    'rain': [0, None, 0.1, 0, 0.2],
    'temperature': [24, 25, 25, 26, 27]
}

df = pandas.DataFrame(data)
print(df)


# Drop not available row
only_complete_rows = df.dropna() # na -- not available
print(only_complete_rows)

# Drop not available column
only_complete_column = df.dropna(axis='columns')
print(only_complete_column)

```
