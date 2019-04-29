# Příklad mutable infrastruktury

Zde používám [Terraform](https://www.terraform.io/) pro vytvoření serveru a vytvoření [Ansible inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) souboru. Věškeré další změny v konfiguraci serverů, bychom prováděli pomoci ansible. Terraform zde šlouží použe po vytvoření infrastruktury. 

Pro aplikování ansible konfigurace:
```
ansible-playbook -e "ansible_python_interpreter=/usr/bin/python3" -u root nginx.yml
```