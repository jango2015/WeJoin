desc "Deploy to server"
task :deploy do
  sh "ssh root@121.199.10.110 'cd ~/workspace/WeJoin/; PID = $(ps aux | grep \"rails server\"); kill -9 $PID; git pull origin master; bundle install; rake db:drop; rake db:setup; rake db:migrate; rails server & exit'"
end
