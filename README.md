
# DevOps Fundamentals Project

## 1. Project Overview
This project demonstrates Linux administration, Bash automation,
log monitoring, website backup, and Git/GitHub version control
on an AWS Ubuntu server.

## 2. AWS Architecture
- AWS EC2: Hosts the Ubuntu server.
- Security Group: Controls network access.
- SSH: Used for remote server administration.
- Apache2: Used to host the website.
- GitHub: Stores project files and source code.

Architecture:
Developer -> GitHub -> AWS EC2 Ubuntu -> Apache2 -> Website

## 3. Installation Steps
1. Launch an Ubuntu EC2 instance.
2. Connect to the server using SSH.
3. Update the package list using sudo apt update.
4. Install Apache using sudo apt install apache2 -y.
5. Create the project folders and Bash scripts.
6. Make scripts executable using chmod +x.
7. Run the health check and Apache monitor scripts.
8. Generate a website backup and log report.
9. Upload the project to GitHub.

## 4. Commands Used
- mkdir -p: Create directories.
- nano: Edit files.
- chmod +x: Make scripts executable.
- free -h: Display memory usage.
- df -h: Display disk usage.
- uptime: Display server uptime.
- systemctl: Manage services.
- tar -czf: Compress website files.
- journalctl: Inspect system logs.
- git add: Stage files.
- git commit: Commit changes.
- git push: Upload changes to GitHub.

## 5. Folder Structure
DevOps-Project/
├── scripts/
│   ├── server-health.sh
│   ├── apache-monitor.sh
│   └── website-backup.sh
├── Backup/
├── docs/
├── generate-log-report.sh
├── log-report.txt
├── index.html
└── README.md

## 6. Challenges Faced
- Learning Linux commands and permissions.
- Automating Apache service monitoring.
- Creating timestamped website backups.
- Understanding Linux system logs.
- Managing source code with Git and GitHub.

## 7. Learning Outcomes
- Practiced Linux server administration.
- Learned Bash scripting and automation.
- Monitored Apache service status.
- Created compressed website backups.
- Analyzed authentication and system logs.
- Practiced Git and GitHub version control.

## 8. Conclusion
This project provided practical experience with Linux,
Bash automation, AWS EC2, and basic DevOps workflows.

