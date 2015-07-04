#Basic dev environment virtual machine - Docker ready Vagrant  

###Provider used - VirtualBox

###Provisioning

*   Shell for pre and post install operations
*   Puppet for tools installation
    
*Note:* Puppet code is little deprecated and will be updated soon. There are also some TODOs in the code
 
 
###Out of the box setup

*   Ubuntu 14.04
*   git
*   wget
*   curl
*   vim
*   g++
*   htop
*   Docker

###Using it

####Setup IP

Look at the line 17 of Vagrantfile

####Setup shared folder

Look at the line 20 of Vagrantfile

####Install other stuff

Use Puppet setup install classes (submanifests) in *puppet/manifests/submanifests* and include them into main manifest *puppet/manifests/main.pp*

If you got problems with puppet, you can always use *sh/postinstall.sh* to shell provision (write bash commands to do your provisioning).


###What is next?

First read through Vagrantfile - it should give you pretty good insight into what is happening.

You can go deeper into implementations by reading through code (left some comments and stuff).

####More info (reading material)

[Vagrant Docs](https://docs.vagrantup.com/v2/ "Vagrant")

[Puppet Docs](http://docs.puppetlabs.com/puppet/ "Puppet")

[Docker Docs](https://docs.docker.com/ "Docker")