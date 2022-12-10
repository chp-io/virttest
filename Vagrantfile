Vagrant.configure("2") do |config|

    # Ubuntu 20.04 (Focal) guest VM
    config.vm.define :ubuntu2004 do |ivhost|
      ivhost.vm.box = "generic/ubuntu2004"
  
      ivhost.vm.synced_folder ".", "/vagrant"
      ivhost.vm.provision "ansible" do |ansible|
        ansible.playbook = "./playbooks/ivhost.yml"
      end
    end
    config.vm.network "public_network"
  end