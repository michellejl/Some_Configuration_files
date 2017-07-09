###################
# BUILDING PROMPT #
###################


# username --> %n
# machine name --> %m

# Main prompt (left)
PROMPT='╭─$(nvm_prompt_info) $fg[magenta]%~%b
╰───$_SYMBOL'

# Main prompt (right)
RPROMPT='$(check_git_prompt_info)'

##################
# GATHERING BITS #
##################

# Get more options here: http://getemoji.com/
EMOJI=(👽 💀 🐦 🐷 🐻 🐼 🐨 🐯 🦁 🐮 🐶 🐸 🐧 🐳 🐌 🐓 🐢 🐍 🦄 🐙 🐠 🐘 🌍 🍄 🌻 👻 ⛄️ 🍭 🍌 🍍 ⛱ 📓 📚 📖 🎈 🖌 🖍 ✏️ 🎨 💬 💭 🗯 💩 🚀 ⛵️ 😎 😜 😝)
function random_emoji {
  echo -n "$EMOJI[$RANDOM%$#EMOJI+1] "
}


# ➭ ✔ ✈ ✭ ✗ ➦ ✂ ✱
# Prompt symbols
# _SYMBOL="%{$fg[red]%}➭%{$fg[yellow]%}➭%{$fg[cyan]%}➭ "
_SYMBOL="<< $(random_emoji) >> "



######################
# Git Prompt Builder #
######################

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%}]"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔"



# Git sometimes goes into a detached head state. git_prompt_info doesn't
# return anything in this case. So wrap it in another function and check
# for an empty string.
function check_git_prompt_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        if [[ -z $(git_prompt_info) ]]; then
            echo "%{$fg[magenta]%}detached-head%{$reset_color%})"
        else
            echo "$(git_prompt_info)"
        fi
    fi
}


######################
# NVM Prompt Builder #
######################

ZSH_THEME_NVM_PROMPT_PREFIX="%{$fg[green]%}⬡ %{$fg[white]%}"
ZSH_THEME_NVM_PROMPT_SUFFIX="%{$fg[white]%}"
