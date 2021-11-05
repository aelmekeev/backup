function restore() {
  app_dir=$1
  (
    cd $app_dir &&
      echo "Restoring $app_dir" &&
      [[ -f ./restore.sh ]] && $(./restore.sh || true) || echo "WARNING: no restore.sh in $app_dir"
  )
}

if [ ! -z "$1" ]; then
  restore $1
elif [ -f apps.conf ]; then
  while read -r app_dir; do
    restore $app_dir
  done <"apps.conf"
else
  for app_dir in */; do
    restore $app_dir
  done
fi
