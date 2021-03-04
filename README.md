![](https://camo.githubusercontent.com/513614220bd093281d2c27218e3720003ec0f0528cb7f78dea310981cb637cbc/687474703a2f2f646f7466696c65732e6769746875622e696f2f696d616765732f646f7466696c65732d6c6f676f2e706e67)

# dotfiles

제목은 Mac 개발환경 세팅 레포지토리로 하겠습니다. 근데 이제 수동을 곁들인.

## Miscellaneous Settings

[Homebrew](https://brew.sh/) 설치

```bash
$ brew install git vim
$ mkdir ~/.vim
$ wget https://raw.githubusercontent.com/happy-nut/dotfiles/main/assets/vim/vimrc -O ~/.vim/vimrc
$ vim
```

FYI: 설치될 Vim 플러그인:

- [nerdtree](https://github.com/preservim/nerdtree)
- [darcula](https://github.com/doums/darcula/)
- [lightline.vim](https://github.com/itchyny/lightline.vim)
- [typescript-vim](https://github.com/leafgarland/typescript-vim)

## Iterm2

1. [iterm2](https://iterm2.com/) 설치

2. [p10k](https://github.com/romkatv/powerlevel10k#homebrew) 설치
 
    **General** > **Preferences** 에서 **Load preference from a custom folder or URL** 체크하고
    URL 붙여넣기: `https://raw.githubusercontent.com/happy-nut/dotfiles/main/assets/iterm2/com.googlecode.iterm2.plist`

3. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) 설치

4. [auto-jump](https://github.com/wting/autojump#os-x) 설치

## Jetbrains Tools

[Toolbox](https://www.jetbrains.com/ko-kr/toolbox-app/) 설치

**Tools** > **Shell Scripts** > **Shell scripts location** 에다가 `/usr/local/bin` 입력.

## Hyper Switch

[hyperswitch](https://bahoom.com/hyperswitch) 설치

## Magnet

[Magnet](https://apps.apple.com/kr/app/magnet-%EB%A7%88%EA%B7%B8%EB%84%B7/id441258766?mt=12) 설치
