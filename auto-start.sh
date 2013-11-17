##PID=$(ps aux | grep "rails server")
PID=$(pgrep "rails server")
kill -9 $PID
git pull origin master
bundle install
rake db:drop
rake db:setup
rake db:migrate
nohup rails server > server.log &
sleep 5
echo "Service started."
