# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  config.vm.box = "centos"
  config.vm.host_name = "sandbox.askang.vm"
  config.vm.provision :puppet, :module_path => "modules"
  
  # config.vm.forward_port(22, 2222)
  # config.vm.forward_port ("apache", 80, 10080 ,{:auto => true,:adapter => 2})
  # config.vm.forward_port 8140, 8140 # Only needed on pupppet master
  # config.vm.forward_port 10050, 10050 # zabbix agent
  # config.vm.forward_port 10051, 10051 # zabbix trap
  # Second network
end
