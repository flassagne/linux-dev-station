dependencies:
	ansible-galaxy install -r requirements.yml

configure:
	ansible-playbook configure.yml

inventory:
	ansible-inventory --graph

tags:
	ansible-playbook --list-tags configure.yml

hosts:
	ansible-playbook --list-hosts configure.yml

.PHONY: dependencies configure inventory tags hosts