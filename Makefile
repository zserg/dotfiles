configure_vim:
	ansible-playbook vim.yml -i local -vv -e curdir=$(CURDIR)

update_plugins: vim

TAGS := always

#install_addons:
#	ansible-playbook addons.yml -i local -vv -K --tags $(TAGS)

#install_dotfiles:
#	ansible-playbook dotfiles.yml -i local -vv

install_ansible:
	sudo apt-get update
	sudo apt-get install ansible

# .PHONY:
