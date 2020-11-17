# extbin
compilation of small shell scripts. git clone `extbin` -> `/usr/local`

```shell script
cd /usr/local
sudo git clone git@github.com:enisbrulic/extbin.git
sudo chmod a+x /usr/local/extbin/*
sudo chown -R $(whoami) /usr/local/extbin
```

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
**prerequisite:** installed macdown on mac -> [macdown](https://macdown.uranusjr.com/).

```shell script
macdown README.md
```

