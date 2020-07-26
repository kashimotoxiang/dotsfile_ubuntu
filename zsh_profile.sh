
# ===== History
HISTSIZE=10000000
SAVEHIST=10000000
# Add commands as they are typed, don't wait until shell exit
setopt INC_APPEND_HISTORY
# If the internal history needs to be trimmed to add the current command line, setting this option will cause the oldest history event that has a duplicate to be lost before losing a unique event
setopt HIST_EXPIRE_DUPS_FIRST
# Do not enter command lines into the history list if they are duplicates of the previous event
setopt HIST_IGNORE_DUPS
# When searching history don't display results already cycled through twice
setopt HIST_FIND_NO_DUPS
# remove the history (fc -l) command from the history list when invoked
setopt HIST_NO_STORE
# remove superfluous blanks from each command line being added to the history list
setopt HIST_REDUCE_BLANKS
# whenever the user enters a line with history expansion, donâ€™t execute the line directly
setopt HIST_VERIFY
# Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_ALL_DUPS
# Don't write duplicate entries in the history file.
setopt HIST_SAVE_NO_DUPS
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_find_no_dups
setopt hist_reduce_blanks
setopt hist_verify
setopt hist_no_store
# ===== Expansion and Globbing
# when the current word has a glob pattern, do not insert all the words resulting from the expansion but generate matches as for completion and cycle through them
setopt GLOB_COMPLETE
# more patterns for filename generation
setopt EXTENDED_GLOB

# ===== Completion
# show completion menu on successive tab press ... needs unsetop menu_complete to work
setopt AUTO_MENU
# automatically list choices on an ambiguous completion
setopt AUTO_LIST
# when listing files that are possible completions, show the type of each file with a trailing identifying mark
setopt LIST_TYPES
# extra completion
setopt COMPLETE_ALIASES
# if unset, the cursor is set to the end of the word if completion is started. Otherwise it stays there and completion is done from both ends
setopt COMPLETE_IN_WORD
# if a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word
setopt ALWAYS_TO_END

# ===== functions
# paste quickly
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Enable highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# ===== theme
CASE_SENSITIVE="true"

# User configuration
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

bindkey '\e[1;3D' backward-word
bindkey '\e[1;3C' forward-word
bindkey '\e[1;3A' beginning-of-line
bindkey '\e[1;3B' end-of-line

hash -d down=~/Downloads

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
# Prevent CVS files/directories from being completed:
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'
# Fuzzy matching of completions for when you mistype them:
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
# And if you want the number of errors allowed by _approximate to increase with the length of what you have typed so far:
zstyle -e ':completion:*:approximate:*' \
        max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
# Ignore completion functions for commands you don�t have:
zstyle ':completion:*:functions' ignored-patterns '_*'
