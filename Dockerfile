# 2026 Modern Kali CTF Dockerfile
# -----------------------------
FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /workspace

# -----------------------------
# Install core system + modern tools
# -----------------------------
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-pip python3-venv curl git \
    wget unzip tmux zsh nano vim \
    netcat-openbsd socat nmap ffuf sqlmap hashcat john \
    binwalk exiftool file ltrace strace gdb rizin \
    ripgrep bat netexec smbclient \
    && apt-get clean && rm -rf /var/lib/apt/lists/*


# -----------------------------
RUN git clone https://github.com/pwndbg/pwndbg /opt/pwndbg && \
    cd /opt/pwndbg && ./setup.sh

# -----------------------------
# Optional: decompress rockyou wordlist
# -----------------------------
RUN [ -f /usr/share/wordlists/rockyou.txt.gz ] && gzip -d /usr/share/wordlists/rockyou.txt.gz || true

# -----------------------------
# Default shell
# -----------------------------
CMD ["/bin/zsh"]
