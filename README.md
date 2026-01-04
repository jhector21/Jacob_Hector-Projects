# Raspberry Pi Motion Detection Camera

# Overview 
This project uses a USB camera and the Motion software to detect
movement and stream video in real time. When motion is detected, a Telegram
bot sends an instant notification to the user. Remote access to the live feed
is provided through ngrok.

## Technology Used
- Raspberry Pi (ARM64)
- Debian Linux (Bookworm)
- Motion (V4L2, ffmpeg)
- Telegram Bot API
- ngrok
- systemd
- USB Camera

## Security Notes
Sensitive Credentials such as API tokens or ngrok authentication tokens are excluded 
from this repository.

## Setup
1. **Install Motion**
   - Enter the following prompts into the terminal
     cd ~/Downloads
     sudo dpkg -i ./pi_bookworm_motion_*_arm64.deb || sudo apt -f install -y
2. **Copy Configuration settings + scripts**
   -  sudo mkdir -p /etc/motion
      sudo cp motion/motion.conf.example /etc/motion/motion.conf
      sudo cp scripts/telegram_notify.sh /usr/local/bin/telegram_notify.sh
      sudo chmod +x /usr/local/bin/telegram_notify.sh
3. **Replace telegram credentials**
   - Set: BOT_TOKEN="..."
   - Set: CHAT_ID="..."
4. **Test**
   - From a device on the same network open the link: http://<PI_IP>:8081
