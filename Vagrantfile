Vagrant.require_plugin 'vagrant-berkshelf'
Vagrant.require_plugin 'vagrant-omnibus'

Vagrant.configure("2") do |config|
  config.vm.hostname = "apt-repo"
  config.vm.box      = "opscode-ubuntu-12.04"
  config.vm.box_url  = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/vmware/opscode_ubuntu-12.04_chef-provisionerless.box"

  config.omnibus.chef_version = "11.8.2"

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.add_recipe "foo"
  end
end
