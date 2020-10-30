# developer-setup
To keep tabs on the list of commands that I need to run to get my laptop setup 

Also helpful for other people to see the tools that I'm using

# General Productivity
* [BetterTouchTool](https://folivora.ai/) - for window snapping + shortcuts
  * costs money to get a license but I deem this to be worth it

* [Chrome](https://www.google.com/chrome/) for the extensions
  * [Vimium - Chrome extension](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en) - for navigating web pages with vim hotkeys
  * [Shortkeys - Chrome extension](https://chrome.google.com/webstore/detail/shortkeys-custom-keyboard/logpjaacgmcbpdkdchjiaagddngobkck?hl=en) - for running javascript in the browser. Worth the $1.99 imo
  
# Code Related
* [Sublime Text 3](https://www.sublimetext.com/3)
  * link to the command line with `ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl`
  * [Pretty Json Plugin](https://packagecontrol.io/packages/Pretty%20JSON) for formatting and prettifying json
* [pure](https://github.com/sindresorhus/pure) - For tricking out the terminal. Also performant for large code repos
  * note: Pure is a flavor of [ohyzsh](https://github.com/ohmyzsh/ohmyzsh)
  * another shell [agnoster](https://github.com/agnoster/agnoster-zsh-theme) - might require [this workaround for strange symbols](https://github.com/ohmyzsh/ohmyzsh/issues/1906#issuecomment-275733922)
* [VSCode](https://code.visualstudio.com/)
  * [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) for easy git commit messages
* [beyondcompare](https://www.scootersoftware.com/)
  * `ln -s /Applications/Beyond\ Compare.app/Contents/MacOS/bcomp /usr/local/bin/bcomp`
  * ```
       # https://www.scootersoftware.com/vbulletin/forum/beyond-compare-4-discussion/linux-aa/10672-bc4-not-recognized-as-git-difftool
       git config --global diff.tool bc3
       git config --global merge.tool bc3
       git config --global mergetool.bc3.trustExitCode true
     ```
* `brew install coreutils` for `greadlink`

# Productivity 




# On a remote server
tmux
vim

