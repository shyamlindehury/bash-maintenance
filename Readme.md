🧰 Bash Maintenance Suite (Dockerized)
📘 Overview

Bash Maintenance Suite is a lightweight, Docker-based Linux maintenance automation project.
It helps perform system backup, cleanup, and log monitoring tasks — all through an interactive command-line menu.

This project demonstrates automation using Bash scripting and Docker containerization, designed for students, DevOps beginners, or anyone who wants to learn system scripting inside isolated containers.

🚀 Features

✅ Backup System

Compresses source data files into a timestamped archive (.tar.gz)

Automatically stores backups in /data/backups

✅ Update & Cleanup

Simulates system updates and removes unused images/files

Cleans temporary data safely inside the container

✅ Log Monitor

Reads app.log and identifies critical, error, and warning messages

Displays summary reports in the terminal

✅ Interactive Menu

User-friendly CLI menu to access all features

Fully integrated inside Docker (no direct system changes)

🏗️ Project Structure
bash-maintenance/
├── Dockerfile
├── data/
│   ├── backups/
│   ├── logs/
│   └── test_src/
│       ├── app.log
│       └── testfile.txt
└── maintenance-scripts/
    ├── backup.sh
    ├── update_cleanup.sh
    ├── log_monitor.sh
    └── maintenance_menu.sh

⚙️ Setup & Usage
1️⃣ Clone this Repository
git clone https://github.com/<your-username>/bash-maintenance.git
cd bash-maintenance

2️⃣ Build Docker Image
docker build -t bash-maintenance:latest .

3️⃣ Run the System Menu

Since Git Bash on Windows sometimes causes path issues,
👉 Run this command in Command Prompt (CMD):

docker run --rm -it -v C:\Users\<YourUser>\bash-maintenance\data:/data bash-maintenance:latest bash -c "/usr/local/bin/maintenance-scripts/maintenance_menu.sh"


This opens the interactive menu:

====================================
   🧰 System Maintenance Suite
====================================
1) Backup System
2) Update & Cleanup
3) Log Monitor
4) Exit
------------------------------------
Choose an option:

🧩 Individual Script Usage

You can also run each script directly:

Backup:
docker run --rm -it -v C:\Users\<YourUser>\bash-maintenance\data:/data bash-maintenance:latest bash -c "/usr/local/bin/maintenance-scripts/backup.sh"

Update & Cleanup:
docker run --rm -it -v C:\Users\<YourUser>\bash-maintenance\data:/data bash-maintenance:latest bash -c "/usr/local/bin/maintenance-scripts/update_cleanup.sh"

Log Monitor:
docker run --rm -it -v C:\Users\<YourUser>\bash-maintenance\data:/data bash-maintenance:latest bash -c "/usr/local/bin/maintenance-scripts/log_monitor.sh"

🧠 Learning Highlights

This project teaches:

Bash scripting fundamentals

Using Docker for Linux system simulation on Windows

Volume mounting and container data persistence

Log parsing and text analysis automation

🛠️ Tech Stack

Language: Bash

Containerization: Docker

Base Image: Ubuntu 24.04

Host Environment: Windows (Git Bash + CMD)

📂 Author

👤 Sibansu Dey
🎓 CSE Student | Backend Developer | Project: Digital Wellbeing Companion - DigiDetox