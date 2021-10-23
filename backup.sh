function backup() {
  app_dir=$1
  (
    cd $app_dir &&
      echo "Backing up $app_dir" &&
      ls -A | grep -vE '(backup|restore).sh' | xargs rm && # remove all files except backup.sh and restore.sh
      [[ -f ./backup.sh ]] && $(./backup.sh || true) || echo "WARNING: no backup.sh in $app_dir"
  )
}

if [ -f apps.conf ]; then
  while read -r app_dir; do
    backup $app_dir
  done <"apps.conf"
else
  for app_dir in */; do
    backup $app_dir
  done
fi
