for d in */; do
  (
    cd $d &&
    echo "Restoring $d"
    [[ -f ./restore.sh ]] && $(./restore.sh || true) || echo "WARNING: no restore.sh in $d"
  )
done
