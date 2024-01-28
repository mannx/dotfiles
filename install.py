# python script to create symlinks to the selected items
# TODO:
#   allow selection of which config files to install since some install might not need all

import os

contents = [
    # folder in git directory -> destination folder
    ("kitty", "~/.config/kitty"),
    ("nvim", "~/.config/nvim"),
    ("zsh/.zshrc", "~/.zshrc"),
    # ( "rofi", "~/.config/rofi" ),
    # ( "awesome", "~/.config/awesome" ),
    ("i3", "~/.config/i3"),
]

# base path of where we are (determine at runtime?)
basePath = os.getcwd()

for item in contents:
    src = item[0]
    dest = item[1]

    print("Linking {}...".format(src))
    cmd = "ln -s {}/{} {}".format(basePath, src, dest)
    os.system(cmd)
