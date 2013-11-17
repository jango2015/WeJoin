##PID=$(ps aux | grep "rails server")
kill -9 $(pgrep -f "rails server")
git pull origin master
bundle install
rake db:drop
rake db:setup
rake db:migrate
nohup rails server > server.log &
sleep 5
echo "Service started."
