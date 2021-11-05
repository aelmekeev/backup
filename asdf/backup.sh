cp ~/.tool-versions .
cp ~/.asdfrc .

if [ -f .tool-versions ]; then
  rm -f extra_restore.sh
  echo "" >>.tool-versions

  while read -r tool; do
    # TODO: add plugin installation
    [ ! -z "$tool" ] && echo "asdf install $tool" >>extra_restore.sh
  done <".tool-versions"
  chmod +x extra_restore.sh
fi
