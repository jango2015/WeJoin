desc "Deploy to server"
task :deploy do
  sh "ssh root@121.199.10.110 'cd ~/workspace/WeJoin/; git pull origin master; ./auto-start.sh;'"
end
