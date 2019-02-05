ls
cd poketool/
ls
bundle install
rails c
bundle install
rails g rails_admin:install
rails db:migrate
exit
cd poketool/
git branch
git branch user-login
git checkout master
ls
bundle install
rails g devise:install
rails g devise User
rails db:migrate
exit
cd poketool/
rails g model Parsonality name:string screen_name:string atk:float blk:float ctc:float def:float spd:float
quit
exit
ls
cd poketool/
ls
ls -a
git branch
git branch feature/{user-sign-in}
git branch
git checkout feature/{user-sign-in}
git branch
git status
git add all
git add *
git status
git status
git status
git add .ruby-version
git status
git commit
git status
git commit
exit
ls
git branch feature/type_model
ls -a
cd poketool/
ls
ls -a
git branch feature/type_model
git branch
git checkout feature/type_model
git branch
rails g model Type name:string screen_name:string
rails g model StrongPoint from_type_id:integer to_type_id:integer
rails g model WeakPoint from_type_id:integer to_type_id:integer
rails g model Invalid from_type_id:integer to_type_id:integer
rails db:migrate
exit
ls
cd poketool/
rails c
exit
cd poketool/
rails c
exit
cd poketool/
rails c
exit
cd poketool/
rails c
ls
rails g model Move name:string screen_name:string power:integer type_id:integer pp:integer
rails db:migrate
exit
cd poketool/
ls
exit
ls
cd poketool/
ls
rails g model element name:string screen_name:string
rails db:migrate
exit
rails
 rails d model element
ls
cd poketool/
ls
rails d model element
exit
cd poketool/
rails d model Move
rails g model Move name:string screen_name:string element:string category:string power:integer accuracy:integer pp:integer
rails db:migrate
rails db:migrate
rails d model Move
rails db:migrate
rails g model Move name:string screen_name:string element:string category:string power:integer accuracy:integer pp:integer
rails db:migrate
rails d model Move
rails db:migrate
rails g model Skill name:string screen_name:string element:string category:string power:integer accuracy:integer pp:integer
rails db:migrate
exit
cd poketool/
ls
cd app/
ls
cd ../
cd db
ls
pwd
ls
cd ../
ls
cd ../
ls
cd poketool/
rails db:seed
rails db:seed
exit
ls
cd poketool/
rails db:migrate
rails db:seed
exit
ls -la
git branch
rails g model Monster no:integer name:string screen_name:string type1:string type2:string hp:intger atk:intger blk:intger ctc:intger def:intger spd:intger
ls -la
cd poketool/
rails g model Monster no:integer name:string screen_name:string type1:string type2:string hp:intger atk:intger blk:intger ctc:intger def:intger spd:intger
rails db:migrate
rails db:migrate
exit
