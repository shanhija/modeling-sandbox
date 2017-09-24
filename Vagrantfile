#
# Copyright 2017 Sami Hanhijärvi
#

Vagrant.configure("2") do |config|

  # Use Debian Jessie as base for virtual machine
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = "20170831.0.0"

  # Port forwarding to virtual machine to allow access to services 
  # within virtual machine
  
  # APACHE ZEPPELIN
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # APACHE SPARK UI
  config.vm.network "forwarded_port", guest: 4040, host: 4040
  config.vm.network "forwarded_port", guest: 4041, host: 4041

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--memory", "4096"]
  end
  
  config.vm.provision "ansible_local" do |ansible|
	ansible.playbook = "ansible/playbook.yml"
  end

  # A message to show after vagrant up
  config.vm.post_up_message = "Installation complete!\n\nAccess Zeppelin at: http://localhost:8080\nUser: admin\nPass: admin"
end
