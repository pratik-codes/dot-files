if status is-interactive
    # general aliases
    alias nv="nvim"

    #  repo paths 
    alias ccl="cd /Users/pratik/code/securly/crextn_client"
    alias se="cd /Users/pratik/code/securly/securly-extensions/"
    alias filter="cd /Users/pratik/code/securly/www-filter/"
    alias per="cd /Users/pratik/code/personal/"
    alias perp="cd /Users/pratik/code/personal/personal-projects"

    alias efish="nvim ~/.config/fish/config.fish"
    alias sfish=". ~/.config/fish/config.fish"

    # Git Aliases
    alias gs="git status"
    alias ys="yarn start"
    alias ns="npm start"

    alias gsquash="git rebase -i HEAD~"
    alias glog="git log --oneline --decorate --graph"

    # python aliases
    alias pyenv="source venv/bin/activate.fish"

    # docker compose aliases
    alias dcu="docker compose up"
    alias dcd="docker compose down"

    # ssh alias
    alias sshrtqa="ssh-add pratik.pem && ssh -A ec2-user@52.38.17.72"

    #rust Aliases
    alias cr="cargo run"

    # anchor Aliases
    alias add="anchor deploy --provider.cluser devnet"

    #eza Aliases
    alias ls="eza --icons"
    alias ll="eza -l --icons"

    # zoxide Aliases
    alias cd="z"
    zoxide init fish | source

    # Git Functions
    # Git log find by commit message
    function glf
        git log --all --grep="$argv"
    end
    function ggpush
        set branch (git symbolic-ref --short HEAD)
        git push origin $branch
    end

    function ggpushf
        set branch (git symbolic-ref --short HEAD)
        git push origin $branch -f
    end

    alias gd="grunt dev"
    alias gp="grunt prod"

    alias
    alias ggpull="git pull origin"
    alias ga="git add"
    alias gaa="git add ."
    alias gaaa="git add --all"
    alias gau="git add --update"
    alias gb="git branch"
    alias gbd="git branch --delete "
    alias gc="git commit"
    alias gcm="git commit --message"
    alias gcf="git commit --fixup"
    alias gco="git checkout"
    alias gcob="git checkout -b"
    alias gcom="git checkout master"
    alias gcos="git checkout staging"
    alias gcod="git checkout develop"
    alias gd="git diff"
    alias gda="git diff HEAD"
    alias gi="git init"
    alias glg="git log --graph --oneline --decorate --all"
    alias gld="git log --pretty=format:'%h %ad %s' --date=short --all"
    alias gm="git merge --no-ff"
    alias gma="git merge --abort"
    alias gmc="git merge --continue"
    alias gp="git pull"
    alias gpo="git pull origin"
    alias gpuo="git push origin"
    alias gpr="git pull --rebase"
    alias gr="git rebase"
    alias gss="git status --short"
    alias gst="git stash"
    alias gsta="git stash apply"
    alias gstd="git stash drop"
    alias gstl="git stash list"
    alias gstp="git stash pop"
    alias gsts="git stash save"
    alias lg="lazygit"

    #tmux alias
    alias tm="tmux"
    alias tmk="tmux kill-server"
    alias sctmux="tmux source-file ~/.config/tmux/tmux.conf"
    # this is done to avoid the error of tmux not able to find the screen-256color and causes terminal description database error
    export TERM=screen-256color

    # docker Aliases
    function dockerbash
        docker exec -it $argv /bin/bash
    end

    function dockerlogs
        docker logs $argv -f
    end

    # for solana cli 
    export PATH="/Users/pratik/.local/share/solana/install/active_release/bin:$PATH"

    #for bun client
    set -Ux BUN_INSTALL "$HOME/.bun"
    set -Ux PATH $BUN_INSTALL/bin $PATH

    # Commands to run in interactive sessions can go here
    oh-my-posh init fish --config https://gist.githubusercontent.com/pratik-codes/c5f984c5acd93cdd10a91dffbf26e868/raw/183e074e55557ea53293ff3f6e9f29195549bf2c/ohmyposh-terminal-theme.json | source
end
