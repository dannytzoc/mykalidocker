FROM kalilinux/kali-rolling:latest

RUN apt-get update && apt-get install -y \
    nmap \
    exploitdb \
    metasploit-framework \
    seclists \
    openvpn \
    sqlmap \
    tmux \
    nano \
    zsh \
    hydra \
    hashid \
    hashcat \
    netcat-openbsd \
    wpscan \
    ffuf \
    chisel \
    crackmapexec \
    python3-impacket \
    proxychains \
    python3-pip \
    && apt-get clean

# Extract rockyou
RUN gzip -d /usr/share/wordlists/rockyou.txt.gz || true

# Default shell
CMD ["/bin/zsh"]
