FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    curl \
    wget \
    unzip \
    tmux \
    zsh \
    nano \
    vim \
    netcat-openbsd \
    socat \
    nmap \
    ffuf \
    gobuster \
    dirsearch \
    sqlmap \
    hashcat \
    hashid \
    john \
    binwalk \
    exiftool \
    steghide \
    foremost \
    file \
    strings \
    ltrace \
    strace \
    gdb \
    radare2 \
    ghidra \
    && apt-get 

# Python tooling (modern CTF stack)
RUN pip3 install --no-cache-dir \
    pwntools \
    requests \
    beautifulsoup4 \
    pycryptodome \
    z3-solver

# Rockyou
RUN gzip -d /usr/share/wordlists/rockyou.txt.gz || true

WORKDIR /workspace
CMD ["/bin/zsh"]
