# This file is to be sourced.
# It is meant to be used in the author's own environment.

local source_file=$(realpath "$_")
local project_root=$(dirname "$source_file")

member() {
  local target=$(ls "$project_root/members" | rofi-or-sk)
  sh_pretty_exec cd "$project_root/members/$target"
}

root() {
  sh_pretty_exec cd "$project_root"
}
