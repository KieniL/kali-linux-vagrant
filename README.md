Thanks to https://github.com/zsusac/kali-linux-vagrant

Initialize new Kali Linux environment using Vagrant

Credentials are vagrant:vagrant.

There is a mount share /vagrant which is your current host directory.
The machine itself only has internet connection and localhost.

Provision:
- Update system
- Set keyboard layout
- Set timezone
- Install git
- Install sublist3r
- Install gobuster
- Install arachni
- Install terminator
- Install seclists
- Install VSCode
- Install ZAP
- Install Burpsuite
- Install Mozilla Observatory

Copy dotfiles:
- .bashrc
- .bash_aliases

Install vscode extensions:
- Eclipse Keymap
- Markdown PDF
- Markdown All in One
- AsciiDoc
- AsciiDoc Live Preview

## Commands to use


### start
<code>vagrant up</code>

### rerun shell scripts
<code>vagrant provision</code>

### up with provision
<code>vagrant up --provision</code>

### destroy vm
<code>vagrant destroy</code>