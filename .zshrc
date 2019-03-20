zplug_source() {
    if [[ ! -d ~/.zplug ]]; then
        echo "Cloning zplug repo..."
        git clone https://github.com/zplug/zplug ~/.zplug
        echo "Sourcing ~/.zplug/init.zsh..."
        source ~/.zplug/init.zsh && zplug update
        echo "Sourced ~/.zplug/init.zsh."
    else
        source ~/.zplug/init.zsh
    fi
    # Self manage
    zplug "zplug/zplug", hook-build:"zplug --self-manage"
}
user_plugins() {
    zplug "b4b4r07/zplug-doctor", lazy:yes
    zplug "plugins/git", from:oh-my-zsh
    zplug "plugins/gitignore", from:oh-my-zsh
    zplug "plugins/colorize", from:oh-my-zsh
    zplug "plugins/colored-man-pages", from:oh-my-zsh
    # zplug "plugins/cp", from:oh-my-zsh
    # zplug "plugins/extract", from:oh-my-zsh
    # zplug "plugins/node", from:oh-my-zsh
    # zplug "plugins/npm", from:oh-my-zsh
    # zplug "plugins/python", from:oh-my-zsh
    # zplug "plugins/autoenv", from:oh-my-zsh

    # Syntax Highlighting & Suggestions
    zplug "hlissner/zsh-autopair", defer:2
    zplug "RobSis/zsh-completion-generator", from:github
    zplug "zsh-users/zsh-completions"
    zplug "zsh-users/zsh-autosuggestions"
    # zsh-syntax-highlighting must be loaded after executing compinit command  and sourcing other plugins
    zplug "zsh-users/zsh-syntax-highlighting", defer:2
    zplug "zsh-users/zsh-history-substring-search", defer:3
    zplug "Tarrasch/zsh-autoenv", from:github
    zplug "gretzky/auto-color-ls", from:github
    # zplug "chrisiscool/zsh-256color", from:github
}

user_themes() {
    # ZSH_THEME="pre"

    # Minimal -------------------------------------------------------------
    # zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
    # zplug "eendroroy/alien-minimal"
    # zplug "dracula/zsh", as:theme
    # zplug "sindresorhus/pure", as:theme

    # POWERLINE -----------------------------------------------------------
    zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
    # zplug "leandromatos/pre-theme", use:pre.zsh-theme, from:github, as:theme # Yellow, gray
    # POWERLINE-LIKE ------------------------------------------------------
    # zplug "martinrotter/powerless", use:powerless.zsh
    # zplug "lucasqueiroz/powerline-pills-zsh", as:theme # Requires powerline fonts
    # zplug "kagamilove0707/moonline.zsh", as:theme
}

powerlevel_pre() {
    TERM=xterm-256color
    # Theme vars
    POWERLEVEL9K_MODE='nerdfont-complete'
    # VCS
    POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF126'
    POWERLEVEL9K_VCS_UNSTAGED_ICON="~"
    POWERLEVEL9K_VCS_UNTRACKED_ICON="+"
    POWERLEVEL9K_HIDE_BRANCH_ICON=true
}
powerlevel_post() {
    POWERLEVEL9K_HOME_FOLDER_ABBREVIATION=" $(print_icon 'HOME_ICON') "
    POWERLEVEL9K_DIR_PATH_SEPARATOR=" $(print_icon 'LEFT_SUBSEGMENT_SEPARATOR') "
}
prompt_os() {
    if grep -q Microsoft /proc/version; then
        OS="Windows"
        # POWERLEVEL9K_OS_ICON_BACKGROUND="blue"
        # POWERLEVEL9K_OS_ICON_FOREGROUND="black"
        POWERLEVEL9K_OS_BACKGROUND="blue"
        OS_ICON=""
    elif `uname`="Linux"; then
        OS="Linux"
        POWERLEVEL9K_OS_ICON_BACKGROUND="orange"
        POWERLEVEL9K_OS_ICON_FOREGROUND="white"
        OS_ICON=""
    else
        OS="Mac OS"
        OS_ICON=""
    fi
    $1_prompt_segment "$0" "$2" "clear" "white" "$OS_ICON" "#"
}
user_config() {
    # setopt autocd autopushd \ pushd_ignore_dups
    setopt histignoredups                              # Prevent dups in history
    setopt hist_ignore_all_dups                        # Remove older duplicate entries from history
    setopt hist_reduce_blanks                          # Remove superfluous blanks from history
    setopt hist_expire_dups_first                      # Lose oldest dups first
    setopt share_history                               # Share history between instances
    setopt interactivecomments                         # Allow Bash-style comments on cmdline
    setopt CORRECT                                     # Enable spelling corrector
    setopt auto_cd                                     # Type dirname -> cd dirname
    setopt pushd_ignore_dups                           # Only one copy of dir in stack
    setopt append_history                              # Multiple term sess use same history
    setopt extended_history                            # Save timestamp and duration
    setopt inc_append_history                          # Add on enter not exit
    setopt complete_in_word                            # Allow completion w/i word
    setopt no_beep                                     # Dont beep on error

    setopt auto_list                                   # List choices on ambiguous completion
    setopt auto_menu                                   # Use menu completion
    setopt always_to_end                               # Move cursor to end if matched

    ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)  # Set zsh syntax highlighters
    CASE_SENSITIVE="false"                             # Ignore case in autocomplete
    HYPHEN_INSENSITIVE="true"                          # Treat _ & - the same
    cdUndoKey() {
        popd
        zle       reset-prompt
        echo
        ls
        zle       reset-prompt
    }

    cdParentKey() {
        pushd ..
        zle      reset-prompt
        echo
        ls
        zle       reset-prompt
    }

    zle -N                 cdParentKey
    zle -N                 cdUndoKey
    bindkey '^[[1;3A'      cdParentKey
    bindkey '^[[1;3D'      cdUndoKey
    # Keybindings
    bindkey '^[[A'         history-substring-search-up
    bindkey '^[[B'         history-substring-search-down
    bindkey "^[[1;5C"      forward-word
    bindkey "^[[1;5D"      backward-word
    zle -N colorls
    # bindkey "^F"           colorls
    # bindkey "^[f"          colorls -al
    # bindkey "^[^F"         colorls --tree
    # bindkey '^R' zaw-history
    # bindkey -M filterselect '^D' zaw-bookmark-add-buffer

    # Activate menu selection
    # zstyle ':completion:*' menu select
    # zstyle ':bracketed-paste-magic' active-widgets '.self-*'
    zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # Case insensitive completion for lowercase
    zstyle ':completion:*' insert-tab pending           # Pasting w tabs doesnt perform completion
    zstyle ':completion:*' menu select                  # Show menu for partial completions on tab
    zstyle ':completion:*' list-colors "${(@s.:.)}LS_COLORS" # Show colors in partial tab completion
    # TODO: If neofetch bin ... neofetch elif screenfetch ... screenfetch else ... cat /proc/kernel
    neofetch

    # MISC
    POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
    # DIRS
    POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
    POWERLEVEL9K_DIR_HOME_BACKGROUND='236'
    POWERLEVEL9K_DIR_HOME_FOREGROUND='247'
    # POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='099'
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='234'
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='243'
    POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='236'
    POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='247'
    POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
    # POWERLEVEL9K_HOME_ICON=''
    # POWERLEVEL9K_HOME_SUB_ICON=''
    # POWERLEVEL9K_FOLDER_ICON=''
    # POWERLEVEL9K_ETC_ICON=''
    # TIME
    POWERLEVEL9K_TIME_BACKGROUND='236'
    POWERLEVEL9K_TIME_FOREGROUND='247'
    POWERLEVEL9K_HISTORY_BACKGROUND='234'
    POWERLEVEL9K_HISTORY_FOREGROUND='250'

    # PROMPT
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os dir vcs)

    # Autosuggestions
    ZSH_AUTOSUGGEST_USE_ASYNC=true                     # Fetch suggestions asynchronously
    ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20                 # Fix autosuggestions on paste slowdown
    # Build completions
    zstyle :plugin:zsh-completion-generator programs cat tr python python3 pip pip3 git node nvm apt sed create-react-app npm yarn

}
finish() {
    zplug check || zplug install
    zplug clean --force
    zplug load
}
sources() {
    source ~/dotfiles/alias/alias
    source ~/dotfiles/alias/functions
    source ~/dotfiles/env/windows.env
    export PATH=$PATH:/home/sam/.cargo/bin
}
main() {
    zplug_source
    powerlevel_pre
    user_plugins
    user_config
    user_themes
    finish
    powerlevel_post
    # source ~/dotfiles/alias/alias
    sources
    eval "$(hub alias -s)"
}

main

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f /home/sam/.travis/travis.sh ] && source /home/sam/.travis/travis.sh
