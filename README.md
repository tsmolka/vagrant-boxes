# Vagrant boxes

This repository contains following Vagrant boxes:

* [dummy-aws](dummy-aws)
 * Dummy box for AWS provider with pre-defined AMI (Ubuntu 14.04 LTS HVM)

* [dummy-vcenter](dummy-vcenter)
 * Dummy box for vCenter provider

## Usage

Boxes can be built using make:

```
make clean
make dummy-aws.box
make all
```

Sample Vagrantfile:

```ruby

Vagrant.configure(2) do |config|
    config.vm.box = "https://rawgithub.com/tsmolka/vagrant-boxes/master/dummy-vcenter.json"
end
```

Note: JSON files are served from github.com as text/plain and Vagrant will fail to recognize
such file as box metadata. Therefore it is adviced to use proxy service such as rawgithub.com
that will add valid Content-Type. 
