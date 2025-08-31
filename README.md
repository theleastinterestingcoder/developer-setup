# Developer-setup
To keep tabs on the list of commands that I need to run to get my laptop setup, and so that it is easier to setup on a new one.

# Getting started
1. Go through mac onboarding: don't import new profile, no to analytics, add cards, etc
2. System settings (hide dock, show battery precentage in menu bar, etc)
   ** Turn off "add period with double space"
4. Download 1password 8
   * Use your phone to scan and activate
  
# General Productivity
* [BetterTouchTool](https://folivora.ai/) - for window snapping + shortcuts
  * costs money to get a license but I deem this to be worth it
  * For license, look through your email. Download the key, and then import the lifetime license into BTT
  * Remember to disable the clipboard history for password manager :)
* [Chrome](https://www.google.com/chrome/) for the extensions
  * [Quick Tabs](https://chrome.google.com/webstore/detail/quick-tabs/jnjfeinjfmenlddahdjdmgpbokiacbbb?hl=en) for managing tabs
  * [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en) - for navigating web pages with vim hotkeys. Import backup from `vimium-options.json`.
  * [Shortkeys](https://chrome.google.com/webstore/detail/shortkeys-custom-keyboard/logpjaacgmcbpdkdchjiaagddngobkck?hl=en) - for running javascript in the browser. Worth the $1.99 imo
  * [uBlock Origin for privacy](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en)
  * Disable "page back" with gesture: `defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE` (remember to test)
* [Neutral Face Emoji Tools](https://chrome.google.com/webstore/detail/neutral-face-emoji-tools/anchoacphlfbdomdlomnbbfhcmcdmjej/related?hl=en) for adding slack emojis en masse
  * [Markdown here](https://chrome.google.com/webstore/detail/markdown-here/elifhakcjgalahccnjkneoccemfahfoa/related?hl=en) for email markdown conversions
  * [Markdown Viewer](https://chrome.google.com/webstore/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk/related?hl=en) for viewing markdown readme.md in code
   * [Keyboard Shortcuts to Close Other/Right Tabs
](https://chrome.google.com/webstore/detail/keyboard-shortcuts-to-clo/dkoadhojigekhckndaehenfbhcgfeepl?hl=en)
* [Native slack](https://slack.com/downloads/mac) for messaging
  * Make sure that MacOS allows slack to send notifications
  * [Test] Slack -> Preferences -> Notifications -> Sound & appearace -> Show an example
  * [Turn it on] MacOs -> Spotlight -> System settings -> Notifications -> Find slack -> Allow notifications -> Toggle on

# Environment Related
* Fundamental stuff
  * `mkdir ~/bin` for custom scripts and installation (often for launching tools like sublime for shell)
* [Brew](https://brew.sh/) for package management‰
  * also installs xcode command line tools
  * `brew install coreutils` for `greadlink`
  * `brew install tmux` for multiple panes
  * `brew install npm` for node package manager
* [pure](https://github.com/sindresorhus/pure) - For tricking out the terminal. Also performant for large code repos
  * note: Pure is a flavor of [ohyzsh](https://github.com/ohmyzsh/ohmyzsh)
  * another shell [agnoster](https://github.com/agnoster/agnoster-zsh-theme) - might require [this workaround for strange symbols](https://github.com/ohmyzsh/ohmyzsh/issues/1906#issuecomment-275733922)
  * Here is my [.zshrc](https://github.com/theleastinterestingcoder/developer-setup/blob/master/bash/.zshrc)
  * Note the dependency on [.bashrc](https://github.com/theleastinterestingcoder/developer-setup/blob/master/bash/.bashrc)
  * Profiles -> Man page for easy read. Slight opacity (92%)
* Setting up Git
  * Generate + add ssh key on github. [Test it like this](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/testing-your-ssh-connection)
* Turn on "Use Option as Meta Key" in terminal settings

# Environment
Install the most recent version of python3:
- https://www.freecodecamp.org/news/python-version-on-mac-update/
** `brew install pyenv`
** `pyenv install 3.13.1`
  
# Coding Apps
Note: some command line tools install to `~/bin/`

* [Sublime Text 3](https://www.sublimetext.com/3)
  * link to the command line with `ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl`
  * [Pretty Json Plugin](https://packagecontrol.io/packages/Pretty%20JSON) for formatting and prettifying json
* [VSCode](https://code.visualstudio.com/) or Cursor (a fork of visual studio but with native agentic coding)
  * [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) for viewing git history
  * [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) for linting and [format on save](https://stackoverflow.com/questions/39494277/how-do-you-format-code-on-save-in-vs-code)
  * [Solarized light](https://marketplace.visualstudio.com/items?itemName=AnnaOwens.solarizedLightThemeVS) because 😎
    * [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python) for advanced features like refactoring
* [beyondcompare](https://www.scootersoftware.com/) - for diffing files
  * Pay some money to use as difftool and mergetool (worth it imo)
  * Launch from command line: `ln -s /Applications/Beyond\ Compare.app/Contents/MacOS/bcomp ~/bin/bcomp`
  
  * Hook up with gitdifftool: https://www.scootersoftware.com/vbulletin/forum/beyond-compare-4-discussion/linux-aa/10672-bc4-not-recognized-as-git-difftool
   ```
       git config --global diff.tool bc3
       git config --global merge.tool bc3
       git config --global mergetool.bc3.trustExitCode true
     ```
   * Setup rules based comparison so contents of files are examined: https://www.scootersoftware.com/support.php?zz=kb_samebutdifferent
   <img width="519" height="507" alt="image" src="https://github.com/user-attachments/assets/4431318b-af1b-4801-b46e-498ecf10ed4e" />
   * Follow through on symbolic links (else, git difftool looks weird, esp `difftool -d`): https://www.scootersoftware.com/vbulletin/forum/beyond-compare-4-discussion/linux-aa/11818-git-dir-diff-doesn-t-seem-to-match-files
  <img width="509" height="510" alt="image" src="https://github.com/user-attachments/assets/71ac4ad0-3b2d-4851-a29c-071ddf6b7944" />

# Git configuration

To change directory to the root of the git repo [link](https://stackoverflow.com/questions/957928/is-there-a-way-to-get-the-git-root-directory-in-one-command):
```
git config --global alias.root 'rev-parse --show-toplevel'
```
so that
```
# now goes to the root directory 
cd $(git root) 
```

To get the branch quickly:
```
git config --global alias.cb "rev-parse --abbrev-ref HEAD"
```
So that you can do 
```
git difftool -d $(git cb)
```
to compare current against branch across multiple commits

# On a remote server
tmux
vim

# Misc stuff
FB messenger
ChatGPT Desktop app
