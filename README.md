# Developer-setup
To keep tabs on the list of commands that I need to run to get my laptop setup 

Also helpful for other people to see the tools that I'm using

# General Productivity
* [BetterTouchTool](https://folivora.ai/) - for window snapping + shortcuts
  * costs money to get a license but I deem this to be worth it
* [Chrome](https://www.google.com/chrome/) for the extensions
  * [Quick Tabs - Chrom Extension](https://chrome.google.com/webstore/detail/quick-tabs/jnjfeinjfmenlddahdjdmgpbokiacbbb?hl=en) for managing tabs
  * [Vimium - Chrome extension](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en) - for navigating web pages with vim hotkeys
  * [Shortkeys - Chrome extension](https://chrome.google.com/webstore/detail/shortkeys-custom-keyboard/logpjaacgmcbpdkdchjiaagddngobkck?hl=en) - for running javascript in the browser. Worth the $1.99 imo
  * [uBlock Origin for privacy](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en)
  * [Neutral Face Emoji Tools
](https://chrome.google.com/webstore/detail/neutral-face-emoji-tools/anchoacphlfbdomdlomnbbfhcmcdmjej/related?hl=en) for adding slack emojis en masse
  * [Markdown here](https://chrome.google.com/webstore/detail/markdown-here/elifhakcjgalahccnjkneoccemfahfoa/related?hl=en) for email markdown conversions
  * [Markdown Viewer](https://chrome.google.com/webstore/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk/related?hl=en) for viewing markdown readme.md in code
* [Native slack](https://slack.com/downloads/mac) for messaging

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

# Coding Apps
Note: some command line tools install to `~/bin/`

* [Sublime Text 3](https://www.sublimetext.com/3)
  * link to the command line with `ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl`
  * [Pretty Json Plugin](https://packagecontrol.io/packages/Pretty%20JSON) for formatting and prettifying json
* [VSCode](https://code.visualstudio.com/)
  * [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) for easy git commit messages
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
   * Follow through on symbolic links (else, git difftool looks weird): https://www.scootersoftware.com/vbulletin/forum/beyond-compare-4-discussion/linux-aa/11818-git-dir-diff-doesn-t-seem-to-match-files

# On a remote server
tmux
vim

# For Pave
1. If you haven't already, install `brew` and then:
 * `brew install npm`
 * `brew install nvm`
2. Install the Firebase CLI:
 * `curl -sL https://firebase.tools | bash`
