FROM kalilinux/kali-rolling:latest
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get dist-upgrade -y
RUN apt-get install -y \
	nmap \
	exploitdb \
	metasploit-framework \
	seclists \
	openvpn \
	sqlmap \
	tmux \
	nano \
	zsh \
	ftp \
	telnet \
	hydra \
	hashid \
	hashcat \
	wordlists \
	netcat-openbsd \
	wpscan \
	pip \
	ffuf \
	chisel \
	crackmapexec \
	python3-impacket \
	proxychains \
	python3.6


RUN chsh -s $(which zsh)
RUN gzip -d /usr/share/wordlists/rockyou.txt.gz
