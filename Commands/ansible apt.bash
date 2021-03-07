# update package cache
ansible all -i inventory.ini -m apt -a update_cache=true --become --ask-become-pass
ansible all -m apt -a update_cache=true --become --ask-become-pass

# install vim-nox
ansible all -i inventory.ini -m apt -a name=vim-nox --become --ask-become-pass

# install tmux
ansible all -i inventory.ini -m apt -a name=tmux --become --ask-become-pass

# update snapd package
ansible all -i inventory.ini -m apt -a "name=snapd state=latest" --become --ask-become-pass

# update distro
ansible all -i inventory.ini -m apt -a "upgrade=dist" --become --ask-become-pass
