# inspiration taken from
# https://github.com/paulirish/dotfiles/blob/master/symlink-setup.sh

declare -a FILES_TO_SYMLINK=$(find . -type f -maxdepth 1 -name ".*" -not -name .DS_Store -not -name .git -not -name .osx | sed -e 's|//|/|' | sed -e 's|./.|.|')

main() {
  local i=""
  local sourceFile=""
  local targetFile=""

  for i in ${FILES_TO_SYMLINK[@]}; do
    sourceFile="$(pwd)/$i"
    targetFile="$HOME/$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"

    rm -rf "$targetFile"
    ln -fs $sourceFile $targetFile
    echo "Linking $i → $targetFile"
  done
}

main
