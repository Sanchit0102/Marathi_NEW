if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/searchingshiv/mirrorbot.git /mirrorbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mirrorbot
fi
cd /mirrorbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
