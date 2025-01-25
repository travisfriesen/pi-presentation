from os import listdir
from os.path import isfile, join, splitext

directory = 'slides'
files = [join(directory, f) for f in listdir(directory) if isfile(join(directory, f)) and f.endswith('.png') and f.rstrip('.png') not in listdir(directory)]

for i in range(len(files)):
    file_path = files[i]
    file_name = splitext(file_path)[0]  # Remove the .png extension

    open(file_name + '.md', 'x')

    with open(file_name + '.md', 'w') as f:
        f.write("# {background-image=" + file_path + "}")
