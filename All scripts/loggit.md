

DATUM=$(date +"%Y-%m-%d_%H-%M")
REPO_DIR="$HOME/ubuntu/loggar"

mkdir -p "$REPO_DIR/$DATUM"
cp /var/log/syslog.* "$REPO_DIR/$DATUM"

cd $HOME/ubuntu
git add .
git commit -m "Backup loggar $DATUM"
git push
