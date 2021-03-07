# Simple version with ansible.cfg
ansible-playbook --ask-become-pass ./Playbooks/install_apache.yml

# playbook 1
ansible-playbook -i inventory.ini --ask-become-pass ./Playbooks/install_apache.yml
ansible-playbook -i inventory.ini --ask-become-pass ./Playbooks/install_apache_improved.yml
# playbook 2
ansible-playbook -i inventory.ini --ask-become-pass ./Playbooks/remove_apache.yml
# playbook 3
ansible-playbook -i inventory_multi.ini --ask-become-pass ./Playbooks/install_apache_multi.yml
# tags
ansible-playbook -i inventory.ini --list-tags ./Playbooks/site.yml
ansible-playbook -i inventory.ini --tags ubuntu --ask-become-pass ./Playbooks/site.yml
# copy file
ansible-playbook -i inventory.ini --list-tags ./Playbooks/copy_file.yml
ansible-playbook -i inventory.ini --tags copy --ask-become-pass ./Playbooks/copy_file.yml
# new user
ansible-playbook -i inventory.ini --list-tags ./Playbooks/new_user.yml
ansible-playbook -i inventory.ini --ask-become-pass ./Playbooks/new_user.yml
# roles
ansible-playbook -i inventory.ini --list-tags ./Playbooks/site_roles.yml
ansible-playbook -i inventory.ini --ask-become-pass ./Playbooks/site_roles.yml

