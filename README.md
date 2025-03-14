# SSH Tunnel Keeper

SSH Tunnel Keeper is a simple Bash script to keep a SOCKS5 proxy tunnel via SSH alive, automatically reconnecting when the connection drops.

## Features

- Keeps an SSH SOCKS5 tunnel running in the background
- Automatically reconnects if the SSH connection is lost
- Ensures `ssh` and `sshpass` are installed before execution

## Requirements

- `ssh`
- `sshpass`

## Installation

Make sure you have `ssh` and `sshpass` installed. You can install them using:

### Debian/Ubuntu

```sh
sudo apt update && sudo apt install -y openssh-client sshpass
```

### CentOS/RHEL

```sh
sudo yum install -y openssh-clients sshpass
```

### Arch Linux

```sh
sudo pacman -Sy openssh sshpass
```

## Usage

1. Clone this repository:

   ```sh
   git clone https://github.com/yourusername/ssh-tunnel-keeper.git
   cd ssh-tunnel-keeper
   ```

2. Edit the script to replace `******` with your SSH password and server details.

3. Run the script:

   ```sh
   chmod +x ssh_tunnel_keeper.sh
   ./ssh_tunnel_keeper.sh
   ```

## License

MIT License

Copyright 2025, Max Base
