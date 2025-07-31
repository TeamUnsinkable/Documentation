---
title: "Setup Development Environment - Windows"
slug: '/env_setup_win'
hide_table_of_contents: false
---

# Setup Development Environement - Windows
Setting up on Windows is hopefully easy?

## Enable WSL2 
Open `Control Panel`. Then go to `Programs` and `Turn Windows Features On or Off`.
In the list that appears ensure the following options are checked with a checkmark. Keep clicking until the checkmark appears. 
- `Windows Subsystem for Linux`
- `Virtual Machine Platform`


Open a terminal ***as administrator***. Then run the following:

```bash
wsl --install -d Ubuntu-22.04
```

## ROS2 Setup
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install git
git clone https://gitlab.com/embry-riddle-robosub-team/scripts
cd scripts
git switch develop
sudo ./ros2_install.sh
```

## Code Setup
```bash
git clone https://gitlab.com/embry-riddle-robosub-team/robosub-workspace.git
cd robosub-workspace
git switch develop
```

all done