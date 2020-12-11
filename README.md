## Development environment setup

### First steps before running setup script
1. Install `git`:
    - Mac OS X: `xcode-select --install` (this includes `git` installation).
    - Linux (Debian-based): `sudo apt install git-all`.

2. Setup your GitHub account:
```
git config --global user.name “your_github_username”
git config --global user.email “your_github_email”
```

3. Setup you SSH keys to access Github and give `id_rsa` the right permissions: `sudo chmod 600 id_rsa`.

4. Test your SSH connection: `ssh -T git@github.com`.

5. Clone this repository and move there:
```
git clone git@github.com:gheredia90/dotfiles.git
cd dotfiles
```

6. Run the setup script:
    - Mac OS X: `sh macos_setup.sh`.
    - Linux (Debian-based): `sh debian_setup.sh`.

### After running setup script
- Mac OS X:
    1. [Setup forwards / backwards shorcuts in iTerm2](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x).
    2. [Setup backward word deletion shorcut in iTerm2](https://stackoverflow.com/a/53818101)
    3. [Update iTerm2 color schemes](https://iterm2colorschemes.com/).
    4. Remap the [shorcut to switch between same app's windows](https://www.idownloadblog.com/2019/06/27/switch-between-windows-on-mac/) to `Cmd ⌘ º`.
    5. [Setup BitBar GitHub plugin](https://github.com/xa-bi/bitbar-github).
    6. [Install Soundflower & Soundflower Bed to manage volume from DisplayPort, HDMI, or Thunderbolt Monitor](https://www.macrumors.com/how-to/use-mac-volume-keys-adjust-monitor-audio/).
- Linux (Debian-based): TBD.

---

### References
- http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
- https://github.com/michaeljsmalley/dotfiles
- https://github.com/danguita/osx-for-developers
- https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/
- https://github.com/mkaszubowski/dotfiles
