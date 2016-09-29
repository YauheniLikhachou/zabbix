# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
#------------------------Agent2-----------------------------------
        config.vm.define "zubagent2", primary: true do |zubagent2|
                zubagent2.vm.box = "sbeliakou/centos-6.7-x86_64"
                zubagent2.vm.network "private_network", ip: "192.168.30.52"
                zubagent2.vm.hostname = "zabbixagent"
                zubagent2.vm.provider "virtualbox" do |vm1|
                        vm1.cpus = 1
                        vm1.memory = "2048"
                end

	config.vm.provision "ansible" do |ansible|
    		ansible.playbook = 'source/provision.yml'
    		ansible.verbose = 'vv'
  		end
        config.vm.provision "shell", inline: "echo The Zabbix-AGENT2 is DONE!"
	end
end
