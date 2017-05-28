# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "patroni" do |patroni|
    patroni.vm.box='bento/centos-7.3'
    patroni.vm.hostname = "patroni"

    patroni.vm.provision :ansible do |ansible|
      ansible.playbook = "tests/site.yml"
      ansible.sudo = true
    end
  end
end
