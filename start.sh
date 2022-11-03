echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Dkmovie/video_stream_Botv2 /video_stream_Botv2
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Dkmovie/video_stream_Botv2 -b $BRANCH /video_stream_Botv2
fi
cd /video_stream_Botv2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
