# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "patroni" do |patroni|
    patroni.vm.box='bento/centos-7.3'
    patroni.vm.hostname = "patroni"
    vagrant_root = File.dirname(__FILE__)
    ENV['ANSIBLE_ROLES_PATH'] = "#{vagrant_root}/../"

    patroni.vm.provider "vmware_workstation" do |v|
      v.vmx["memsize"] = "1024"
      v.vmx["numvcpus"] = "2"
    end

    patroni.vm.provision :ansible do |ansible|
      ansible.playbook = "tests/site.yml"
      ansible.sudo = true
    end
  end
end
