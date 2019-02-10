# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.create(name:'fire', screen_name:'ほのお')
Type.create(name:'water', screen_name:'みず')
Type.create(name:'grass', screen_name:'くさ')
Type.create(name:'bug', screen_name:'むし')
Type.create(name:'normal', screen_name:'ノーマル')
Type.create(name:'ghost', screen_name:'ゴースト')
Type.create(name:'fighting', screen_name:'かくとう')
Type.create(name:'flying', screen_name:'ひこう')
Type.create(name:'poison', screen_name:'どく')
Type.create(name:'ground', screen_name:'じめん')
Type.create(name:'rock', screen_name:'いわ')
Type.create(name:'steel', screen_name:'はがね')
Type.create(name:'electric', screen_name:'でんき')
Type.create(name:'dragon', screen_name:'ドラゴン')
Type.create(name:'psychic', screen_name:'エスパー')
Type.create(name:'ice', screen_name:'こおり')
Type.create(name:'dark', screen_name:'あく')
Type.create(name:'fairy', screen_name:'フェアリー')

Parsonality.create(name:'adamant', screen_name:'いじっぱり', atk:1.1, blk:1.0, ctc:0.9, def:1.0, spd:1.0)

skill = ActiveSupport::JSON.decode(File.read('/usr/src/app/poketool/db/skills.json'))
skill.each do |data|
  Skill.create(name:data['ename'], screen_name:data['jname'], type_id:data['type'], category:data['category'], power:data['power'], accuracy:data['accuracy'], pp:data['pp'])
end

monster = ActiveSupport::JSON.decode(File.read('/usr/src/app/poketool/db/pokedex.json'))
monster.each do |data|
  Monster.create(no:data['id'], name:data['name']['english'], screen_name:data['name']['japanese'], type1_id:data['type'][0], type2_id:data['type'][1], hp:data['base']['hp'], atk:data['base']['attack'], blk:data['base']['defense'], ctc:data['base']['sp. attack'], def:data['base']['sp. defense'], spd:data['base']['speed'])
end
