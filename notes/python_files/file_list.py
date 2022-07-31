def list_file():
    from os import listdir
    from os.path import isfile, join

    my_path = "/home/baka/Pictures"
    onlyfiles = [f for f in listdir(my_path) if isfile(join(my_path, f))]
    return onlyfiles

# print(*list_file(), sep='\n')


def list_file2():
    from os import walk

    my_path = "/home/baka/Pictures"

    f = []
    for (dirpath, dirnames, filenames) in walk(my_path):
        f.extend(filenames)
        break

print(list_file2(), sep='\n')
