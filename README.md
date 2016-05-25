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
    config.vm.box = "https://github.com/tsmolka/vagrant-dummy/raw/master/dummy-aws.box"
end
```
