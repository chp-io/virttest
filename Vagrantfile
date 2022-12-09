Vagrant.configure("2") do |config|

    # Ubuntu 20.04 (Focal) guest VM
    config.vm.define :ubuntu2004 do |ubuntu2004_config|
      ubuntu2004_config.vm.box = "generic/ubuntu2004"
  
    #   ubuntu2004_config.vm.synced_folder ".", "/vagrant"
    #   ubuntu2004_config.vm.provision :shell, path: "./scripts/guest/bootstrap_ubuntu.sh"
    #   ubuntu2004_config.vm.provision :reload
  
      ubuntu2004_config.vm.provider :libvirt do |libvirt|
        libvirt.cpus = 4
        libvirt.memory = 8192
      end
    end
  end