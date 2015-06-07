# zsh-fastcd

fastcd is the plugin for zsh, which provide the opportunity to fast changing
work directory.

# Gif? Yes.

![usage](https://cloud.githubusercontent.com/assets/8445924/8023230/05717656-0cf1-11e5-8be4-a7899469e718.gif)

# Installation
You can install plugin via antigen:
```
antigen bundle kovetskiy/zsh-fastcd
```

Or manually:

```
git clone https://github.com/kovetskiy/zsh-fastcd ~/.zsh-fastcd/
```

and add including to your .zshrc:

```
source ~/.zsh-fastcd/fastcd.plugin.zsh
```

# Usage
Actually, `fastcd` it's just wrapper for `find` and `cd` utils, but it's
just marvellous and very useful tool.

**fastcd** takes two arguments,
- `root directory` - directory which will be used as root directory for find.
    It's may be '$GOPATH/src' or '~/.vim/bundle' for example.
- `maxdepth` - this is variable which will be passed to `find` utility.

# Aliases

Of course, you should use aliases for using fastcd, there is examples:
```
alias vicd="fastcd ~/.vim/bundle/ 1"
alias gocd="fastcd $GOPATH/src/ 3"
```
