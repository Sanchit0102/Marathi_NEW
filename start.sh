if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sanchit0102/Marathi_NEW.git /Marathi_NEW
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Marathi_NEW
fi
cd /Marathi_NEW
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
