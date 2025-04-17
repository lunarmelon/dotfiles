# Dotfiles

These are my configurations for various programs I use

# Requirements

> [!NOTE]
> As of the last commit for this repo, I am using Fedora 42. Use the equivalent package name for your distribution and check the official documentation for each program or package listed here in case you have problems.

- `alacritty`
- `fastfetch`
- `kitty`
- `newsboat`
- `neovim`
- `ohmyposh`
- `stow`
- `zsh`

```bash
sudo dnf install alacritty fastfetch kitty newsboat neovim stow zsh

```

As of the writing of this file, ohmyposh doesn't have a dnf package. Use this command to install it (Linux only) or check the [official page](https://ohmyposh.dev/) for installation instructions:

```bash
curl -s https://ohmyposh.dev/install.sh | bash -s

```

# Installation

> [!WARNING]
> Backup your existing configurations before this!

```bash
git clone https://github.com/lunarmelon/dotfiles.git ~/lunarmelondots
cd lunarmelondots
stow .
```

# Recommendations

- In my Neovim configuration, I use [mason.nvim](https://github.com/williamboman/mason.nvim). Some packages install via npm, so I recommend that you use nvm instead of your distribution's nodejs/npm package for consistency purposes.
- If you're on Debian or Debian/Ubuntu-based distros, I recommend that you install Kitty from the [official binary](https://sw.kovidgoyal.net/kitty/binary/#binary-install) since the versions on the repos are a bit outdated and both Neovim and Kitty use current icat implementations (version >= 0.40) not available in previous versions.
- For a more in-depth explanation about Neovim, check [this repo](https://github.com/lunarmelon/nvim).
