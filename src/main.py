def main_method(*args, **kwargs):
    print(f"Arguments: {args}")
    print(f"Keyword Arguments: {kwargs}")
    return kwargs


def new_func():
    print("Do something")
    return "Something is done!"
