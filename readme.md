# 🌟 LynXHashib's Dotfiles

A carefully crafted Hyprland setup featuring a modern, aesthetic Linux desktop environment with dynamic theming and smooth animations.

[![Arch Linux](https://img.shields.io/badge/Arch%20Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)](https://hyprland.org/)
[![Waybar](https://img.shields.io/badge/Waybar-F3F3F3?style=for-the-badge&logo=wayland&logoColor=black)](https://github.com/Alexays/Waybar)
[![Zsh](https://img.shields.io/badge/Zsh-F15A24?style=for-the-badge&logo=zsh&logoColor=white)](https://www.zsh.org/)

## ✨ Features

- 🪟 **Hyprland** - Modern Wayland compositor with smooth animations
- 🎨 **Dynamic Theming** - Pywal integration for automatic color scheme generation
- 🔧 **Customized Waybar** - Beautiful status bar with system information
- 🚀 **Kitty Terminal** - GPU-accelerated terminal emulator
- 🎯 **Rofi Launcher** - Elegant application launcher
- 🎵 **Audio Controls** - Integrated volume and media controls
- 🖼️ **Wallpaper Management** - Easy wallpaper switching with Waypaper
- 🐚 **Oh-My-Zsh** - Enhanced shell experience with Powerlevel10k theme

## 🖥️ Components

| Component | Tool | Purpose |
|-----------|------|---------|
| **Window Manager** | Hyprland | Wayland compositor |
| **Status Bar** | Waybar | System information display |
| **Terminal** | Kitty | Fast, GPU-accelerated terminal |
| **App Launcher** | Rofi | Application launcher |
| **Shell** | Zsh + Oh-My-Zsh | Enhanced shell with themes |
| **Theme Engine** | Pywal16 + Hellwal | Dynamic color schemes |
| **Wallpaper** | SWWW + Waypaper | Wallpaper management |
| **Logout Menu** | Wlogout | Power management interface |

## 🚀 Quick Installation

### Prerequisites
Make sure you're running Arch Linux or an Arch-based distribution.

### 1. Install Dependencies

**Core packages (pacman):**
```bash
sudo pacman -S kitty hyprland rofi-wayland waybar swww zsh zsh-autosuggestions zsh-syntax-highlighting fastfetch imagemagick
```

**AUR packages (yay):**
```bash
yay -S python-pywal16 hellwal waypaper wlogout
```

### 2. Install Oh-My-Zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 3. Clone and Setup Dotfiles
```bash
# Clone the repository
git clone https://github.com/LynXHashib/dotfiles.git
cd dotfiles

# Copy config files to ~/.config
cp -r hyprland kitty rofi waybar wlogout ~/.config/

# Copy shell configuration
cp .zshrc .p10k.zsh ~/

# Copy wallpapers
cp -r wallpaper ~/
```

## ⚙️ Configuration

### 🖥️ Monitor Setup
Edit `~/.config/waybar/config` and change `HDMI-A-3` to your monitor's name:
```bash
# Find your monitor name
hyprctl monitors
```

### 🎨 Apply Wallpaper
1. Launch Waypaper: `waypaper`
2. Select a wallpaper from `~/wallpaper/`
3. Apply and enjoy the dynamic theming!

### 🔧 Additional Customization
- **Hyprland**: Edit `~/.config/hyprland/hyprland.conf`
- **Waybar**: Modify `~/.config/waybar/config` and `style.css`
- **Kitty**: Customize `~/.config/kitty/kitty.conf`
- **Rofi**: Adjust `~/.config/rofi/config.rasi`

## 📁 Directory Structure

```
dotfiles/
├── hyprland/          # Hyprland window manager config
├── kitty/             # Kitty terminal config
├── rofi/              # Rofi launcher config
├── waybar/            # Waybar status bar config
├── wlogout/           # Logout menu config
├── ags/               # AGS config (future use)
├── wallpaper/         # Wallpaper collection
│   └── screenshots/   # Desktop screenshots
├── .zshrc            # Zsh configuration
└── .p10k.zsh         # Powerlevel10k theme config
```

## 🎨 Screenshots

### Desktop Overview
![Desktop](https://github.com/LynXHashib/dotfiles/blob/main/wallpaper/screenshots/20241212_14h13m41s_grim.png)

### Terminal & Fastfetch
![Terminal](https://github.com/LynXHashib/dotfiles/blob/main/wallpaper/screenshots/20241212_14h18m08s_grim.png)

### Application Launcher
![Rofi](https://github.com/LynXHashib/dotfiles/blob/main/wallpaper/screenshots/ss3.png)

### Workspace Management
![Workspaces](https://github.com/LynXHashib/dotfiles/blob/main/wallpaper/screenshots/ss4.png)

### File Manager
![Files](https://github.com/LynXHashib/dotfiles/blob/main/wallpaper/screenshots/ss5.png)

### System Information
![System](https://github.com/LynXHashib/dotfiles/blob/main/wallpaper/screenshots/ss6.png)

### Logout Menu
![Logout](https://github.com/LynXHashib/dotfiles/blob/main/wallpaper/screenshots/ss7.png)

### Night Theme
![Night](https://github.com/LynXHashib/dotfiles/blob/main/wallpaper/screenshots/ss8.png)

## 🛠️ Troubleshooting

### Common Issues

**Waybar not showing:**
- Check monitor name in waybar config
- Restart waybar: `pkill waybar && waybar &`

**Wallpaper not applying:**
- Make sure SWWW is running: `swww init`
- Try setting wallpaper manually: `swww img ~/wallpaper/your-image.jpg`

**Zsh theme not loading:**
- Make sure Oh-My-Zsh is installed
- Source the config: `source ~/.zshrc`

## 🤝 Contributing

Feel free to:
- Report bugs or issues
- Suggest improvements
- Share your customizations
- Submit pull requests

## 📝 Notes

- The `ags/` folder contains experimental configs for future use
- This setup is optimized for Arch Linux but should work on other distributions with minor adjustments
- Make sure to backup your existing configs before installation

## 👨‍💻 Author

**LynXHashib**
- GitHub: [@LynXHashib](https://github.com/LynXHashib)
- Dotfiles: [Repository](https://github.com/LynXHashib/dotfiles)

## 📜 License

This project is open source and available under the [MIT License](LICENSE).

---

⭐ **If you found this useful, please consider starring the repository!**

> 💡 **Tip**: Join the [r/unixporn](https://reddit.com/r/unixporn) community to share your desktop and get inspiration from others!
