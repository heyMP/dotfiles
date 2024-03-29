# Dracula Theme v1.2.5
#
# https://github.com/dracula/dracula-theme
#
# Copyright 2016, All rights reserved
#
# Code licensed under the MIT license
# http://zenorocha.mit-license.org
#
# @author Zeno Rocha <hi@zenorocha.com>

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

# if [ "$ZSH_PRODUCTION_ENV" ]; then
#   local server_env_color="%{$fg_bold[red]%"
# else
#   local server_env_color="%{$fg_bold[green]%"
# fi

if [ "$ZSH_SERVER_COLOR" ]; then
  local server_env_color="%{$fg_bold[$ZSH_SERVER_COLOR]%"
else
  local server_env_color="%{$fg_bold[green]%"
fi

if [ "$ZSH_SERVER_NAME" ]; then
  local server_env_name="$ZSH_SERVER_NAME"
else
  local server_env_name="%m"
fi

PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg_bold[blue]%}%c $(git_prompt_info)% %{$reset_color%} ${EPS1}
   '

ZSH_THEME_GIT_PROMPT_CLEAN=") %{$fg_bold[green]%}✔ "
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg_bold[yellow]%}✗ "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
