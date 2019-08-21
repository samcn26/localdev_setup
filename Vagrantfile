# -*- mode: ruby -*-
# vi: set ft=ruby :
$timezone = "Asia/Tokyo"
boxes = [
  {
        :img => "centos/7",
        :name => "centos1",
        :ip => "192.168.205.101",
        :mem => "1024",
        :cpu => 1
  },
  {
        :img => "ubuntu/xenial64",
        :name => "ubuntu1",
        :ip => "192.168.205.201",
        :mem => "1024",
        :cpu => 1
  }
]

ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip

$iniscript = <<-SHELL
    mkdir -p /root/.ssh /home/vagrant/.ssh
    echo -e "LANG=en_US.utf-8\nLC_ALL=en_US.utf-8" >/etc/environment
    # set timezone
    timedatectl set-timezone  #{$timezone}
    # allow ssh from host
    sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    systemctl restart sshd
    echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
    echo #{ssh_pub_key} >> /root/.ssh/authorized_keys                                        
SHELL

Vagrant.configure(2) do |config|
    boxes.each do |vms|
        config.vm.define vms[:name] do |config|
            config.vm.box = vms[:img]
            config.vm.network "private_network", ip: vms[:ip]
            config.vm.hostname = vms[:name]
            config.vm.provision "shell", inline: $iniscript
            config.vm.provider "virtualbox" do |v|
                v.memory = vms[:mem]
                v.cpus = vms[:cpu]
            end
        end
    end
end