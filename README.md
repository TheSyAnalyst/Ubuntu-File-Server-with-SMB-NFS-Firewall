<h1>📁 Ubuntu File Server – SMB/NFS + Firewall</h1>

### 📺 [Watch Setup Guide](https://www.youtube.com/watch?v=YOUR_VIDEO_3)

---

<h2>📄 Overview</h2>

This project demonstrates how to set up a secure Ubuntu-based file server using **Samba (SMB)** and **NFS**, along with UFW-based firewall configuration. It enables controlled file sharing in mixed OS environments.

---

<h2>🧩 Key Components</h2>

- **Samba Configuration**  
  Enables Windows clients to access Linux-shared directories.

- **NFS Setup**  
  Configures NFS shares for Linux/Unix systems on the same network.

- **Firewall Rules with UFW**  
  Restricts access by port, subnet, or interface.

---

<h2>🔧 Setup Tips</h2>

- 🛠️ **Automated Deployment** – Shell scripts included for one-click setup.  
- 👥 **User Permissions** – Assign read/write access by group or user ID.  
- 🔍 **Audit Monitoring** – Integrate with `auditd` to log access or file modification attempts.

---

<h2>🧰 Tools & Technologies</h2>

- Ubuntu Server 20.04 / 22.04  
- Samba, NFS-Kernel-Server  
- UFW (Uncomplicated Firewall)  
- `auditd` for access monitoring  

---

<h2>📁 Files in Repository</h2>

- `smb_setup.sh` – Script for Samba configuration  
- `nfs_setup.sh` – Script for NFS shares  
- `firewall_rules.sh` – Secure UFW setup  
- `permissions.md` – Guide to user/group access setup  

---

<h2>📫 Connect With Me</h2>

- GitHub: [@TheSyAnalyst](https://github.com/TheSyAnalyst)  
- YouTube: [System Lab Tutorials](https://www.youtube.com/c/YOUR-YOUTUBE-CHANNEL)

> 🛡️ **Best Practice**: Always isolate file servers in a secured VLAN or subnet for production use.
