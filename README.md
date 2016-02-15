In the spirit of promoting an interest in system administration / web operations we decided to tackle this months challenge with infrastructure!  

If you're building an artefact, you can and should test it with automated tests!!!

What this does:
- spins up a new VM with Debian as the OS
- provisions the VM: Chef installs Openresty with a script
- provisions the VM: Chef installs my nginx configuration
- once finished nginx will be running in a VM with an endpoint /calculate/{number-1}/plus/{number-2}
- hitting this endpoint runs a lua script that performs the calculation
- nginx returns the result

Pre reqz:
- Ruby > 1.9
- Vagrant
- Virtual Box

Tech Stack:
- Bash Spec
- Bash
- Chef Solo
- Chefspec
- Serverspec
- Test Kitchen
- Openresty (nginx / lua)

Some usefull resources:
- Openresty: http://openresty.org/
- Testing bash scripts: https://github.com/realestate-com-au/bash-spec-2
- Testing Rake Tasks: https://robots.thoughtbot.com/test-rake-tasks-like-a-boss
- Chef DK: https://downloads.chef.io/chef-dk/mac/
- Berkshelf: https://github.com/berkshelf/berkshelf
- Knife docs: http://kitchen.ci/docs/getting-started/creating-cookbook
