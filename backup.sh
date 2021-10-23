for d in */; do
  (
    cd $d &&
    echo "Backing up $d"
    ls -a | grep -vE '(backup|restore).sh' | xargs rm &&   # remove all files except backup.sh and restore.sh
    [[ -f ./backup.sh ]] && $(./backup.sh || true) || echo "WARNING: no backup.sh in $d"
  )
done
