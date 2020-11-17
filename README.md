# extbin
compilation of small shell scripts. git clone `extbin` -> `/usr/local`

## init
```shell script
cd /usr/local
sudo mkdir extbin && sudo chown -R $(whoami) extbin
git clone git@github.com:enisbrulic/extbin.git
/usr/local/extbin/set-zsh-env
source ~/.zshrc
```

---
## *i* - starts intellij in new window
cd -> an intellij project  
```shell script
i .
```

## *testecho* - to eval e.g. right environment path settings
```shell script
testecho
```

```shell script
testecho "helo shell"
```

## *newscript* - create new script file and opens this
```shell script
newscript myscript.sh
```

## *set-zsh-env* - add export path usr/local/extbin -> ~/.zshrc
```shell script
set-zsh-env
```

## *macdown* - opens markdown file from terminal with *macdown*
**prerequisite:** installed macdown on mac -> [macdown](https://macdown.uranusjr.com/){:target="_blank" rel="noopener"}

```shell script
macdown README.md
```

