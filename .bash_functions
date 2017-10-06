# Just a bunch of useful functions

# Quick PHP server
serve() {
	local root=${1:-'.'}
	local port=${2:-'8080'}
	php -S localhost:$port -t $root
}

# Go up N dirs
up() {
  local folder=""
  local n=${1:-'1'}
  local count=0
  while [ $count -lt $n ]; do
      folder=$folder"../"
      let count=count+1
  done
  cd $folder
}

# I know.........
jump() {
  if [ -z "$*" ]; then
    printf "%s\n" "No args?"
    return
  fi

  local result=( $(find ./* -type d -iname "*$1*") )
  local count=${#result[@]}

  if [ $count != 1 ]; then
    printf "%s\n" "Could not jump to directory"
    return
  fi

  cd ${result[0]}
}

# Make a directory and enter it
md() {
  mkdir -p $@ && cd $@;
}

# Sublime
s() {
  local target=${1:-'.'}
  subl -a $target
}
