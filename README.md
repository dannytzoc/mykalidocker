# mykalidocker
Personal Kali Docker for MAC 
The reason for using Docker and not a VM is because as we know VM are tediouse in Apple Products so we decide to go with Docker. This is a terminal based project so there is no GUI application but thats fine we all love the terminal dont we ¯\_(ツ)_/¯ 

First add this to your .bashrc or .zshrc in your home directory 
```
alias chisel_client="chisel client docker.for.mac.host.internal:9999 R:9000:socks"
```
then in your kali docker once its setup add this as an alias inside 
```
alias chisel_server="chisel server --socks5 -p 9999 --reverse"
```
The reason for this is so you can access the web applications 

To start docker contatiner run this command you can probably alias is to make it easier
```
docker run --cap-add=NET_ADMIN --device=/dev/net/tun --sysctl net.ipv6.conf.all.disable_ipv6=0 -it imgid bash
```
