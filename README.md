![](https://camo.githubusercontent.com/513614220bd093281d2c27218e3720003ec0f0528cb7f78dea310981cb637cbc/687474703a2f2f646f7466696c65732e6769746875622e696f2f696d616765732f646f7466696c65732d6c6f676f2e706e67)

제목은 Mac 개발환경 세팅 레포지토리로 하겠습니다. 근데 이제 수동을 곁들인.

## Miscellaneous Settings

1. [Homebrew](https://brew.sh/) 설치

2. vim (git, wget) 설치

   ```bash
   $ brew install git vim wget
   $ mkdir -p ~/.vim && wget https://bit.ly/30arSXR -O ~/.vim/vimrc
   $ vim
   ```

3. [gitalias](https://github.com/GitAlias/gitalias#install) 설치

4. pstree 설치

   ```bash
   $ brew install pstree
   ```

## Iterm2

1. [iterm2](https://iterm2.com/) 설치

2. [p10k](https://github.com/romkatv/powerlevel10k#homebrew) 설치
 
    **General** > **Preferences** 에서 **Load preference from a custom folder or URL** 체크

    `https://bit.ly/389SfkR` 복사 후 붙여넣기

3. [Zinit](https://github.com/zdharma/zinit#option-1---automatic-installation-recommended) 설치
   `.zshrc` 에 다음 내용을 추가.
   ```bash
   zinit light zdharma/fast-syntax-highlighting
   zinit light zsh-users/zsh-autosuggestions
   zinit light zsh-users/zsh-completions
   ```

4. [auto-jump](https://github.com/wting/autojump#os-x) 설치

## Jetbrains Tools

[Toolbox](https://www.jetbrains.com/ko-kr/toolbox-app/) 설치

**Tools** > **Shell Scripts** > **Shell scripts location** 에다가 `/usr/local/bin` 입력.

## Hyper Switch

[Hyper Switch](https://bahoom.com/hyperswitch) 설치

## Magnet

[Magnet](https://apps.apple.com/kr/app/magnet-%EB%A7%88%EA%B7%B8%EB%84%B7/id441258766?mt=12) 설치

## Infra tools

1. [K9s](https://github.com/derailed/k9s#installation) 설치

   ```bash
   $ wget https://raw.githubusercontent.com/derailed/k9s/master/skins/monokai.yml -O ~/.k9s/skin.yml 
   ```

