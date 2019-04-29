# Příklad immutable infrastruktury 

Zde používám [Packer](https://www.packer.io/) a [Ansible](https://www.ansible.com/) pro buildování images, které se používají jako template pro servery. Ansible je použit jako provisioner při buildu image. Servery se poté již nemění a každá potřeba změny vede k novému buildu image. Bylo by možné přidat ještě např. [Terraform](https://www.terraform.io/) a servery vytvářet automaticky.

pro build nového image 

```
packer build ubuntu.json  
```