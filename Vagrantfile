Vagrant.configure("2") do |config|
    config.ssh.insert_key = false
    config.vm.define "ubuntu" do |ubuntu|
      ubuntu.vm.box = "ubuntu/bionic64"
    end
    config.vm.network "public_network"
  end
