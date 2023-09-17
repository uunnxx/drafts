#### Anti-Patterns

- Not using named tuples in function return
    ```
    # Bad code sample
    def get_name():
        return "Richard", "Jones"

    name = get_name()
    print(name[0], name[1])

    # Good code sample
    from collections import namedtuple

    def get_name():
        name = namedtuple("name", ["first", "last"])
        return name("Richard", "Jones")

    name = get_name()
    print(name.first, name.last)
    ```
- Using `type()` to compare types
    ```
    # Bad code sample
    c = Circle(2)
    r = Rectangle(3, 4)
    if type(r) is not type(c):
        print("object types don't match")

    # Good code sample
    r = Rectangle(3, 4)
    if isinstance(r, types.ListType):
        print("object r is a list")
    ```
- Not using `get()` to return a default value from a dict
    ```
    # Bad code sample
    dictionary = {"message": "Hello!"}
    data = ""

    if "message" in dictionary:
        data = dictionary["message"]

    print(data)

    # Good code sample
    dictionary = {"message": "Hello!"}
    data = dictionary.gett("message", "")
    print(data)
    ```
- Return more than one variable type in function calls
    ```
    # Bad code sample
    def get_secret_code(password):
        if password != "bicycle":
            return None
        return 42

    # Good code sample
    def get_secret_code(password):
        if password != "bicycle":
            raise ValueError
        return 42
    ```
