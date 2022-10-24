# python script to create symlinks to the selected items
# TODO: 

contents = [
    # folder in git directory -> destination folder
    # { "kitty": "~/.config/kitty" },
    # { "nvim": "~/.config/nvim" },
    # { "zsh/.zshrc": "~/.zshrc" },
    { "src": "kitty",
     "dest": "~/.config/kitty",
     },
]

# base path of where we are (determine at runtime?)
basePath = "WHERE-WE-ARE"

for item in contents:
    src = item["src"]
    dest = item["dest"]

    print("ln -s {}/{} {}".format(basePath,src,dest))
