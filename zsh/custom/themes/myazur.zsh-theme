# vim: filetype=sh

# Config
SHOW_FULL_PATH=true
COMMON_PROMPT_SYMBOL="❯"

# Left Prompt
PROMPT='$(common_host)$(common_current_dir)$(common_bg_jobs)$(common_return_status)'

# Right Prompt
RPROMPT='$(git_prompt_info)'

# Prompt with current SHA
# PROMPT='$(common_host)$(common_current_dir)$(common_bg_jobs)$(common_return_status)'
# RPROMPT='$(common_git_status) $(git_prompt_short_sha)'

# Host
common_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    me="%n@%m"
  elif [[ $LOGNAME != $USER ]]; then
    me="%n"
  fi
  if [[ -n $me ]]; then
    echo "%{$fg[green]%}$me%{$reset_color%}:"
  fi
}

# Current directory
common_current_dir() {
if [[ "$HOME" == "$(pwd)" ]]; then
	echo -n "%{$fg[blue]%}~ "
else
	if [[ "$SHOW_FULL_PATH" == true ]]; then
		echo -n "%{$fg[blue]%}%d "
	else
		echo -n "%{$fg[blue]%}%c "
	fi
fi
}

# Prompt symbol
common_return_status() {
  echo -n "%(?.%F{008}.%F{red})$COMMON_PROMPT_SYMBOL%f "
}

# Background Jobs
common_bg_jobs() {
  bg_status="%{$fg[yellow]%}%(1j.↓%j .)"
  echo -n $bg_status
}
