bundle install

sh ./utils/wait-for-it.sh db:5432 -t 30

# rm /usr/src/app/poketool/tmp/pids/server.pid
rm -r /usr/src/app/poketool/tmp

cd poketool
bundle install
# bundle exec rake db:migrate
bundle exec rails server --port=3000 --binding=0.0.0.0
