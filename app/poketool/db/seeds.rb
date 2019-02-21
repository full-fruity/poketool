# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

type = ActiveSupport::JSON.decode(File.read('types.json'))
type.each do |data|
  Type.create(name:data['name'], screen_name:data['screen_name'])
end

personality = ActiveSupport::JSON.decode(File.read('personalities.json'))
personality.each do |data|
  Parsonality.create(name:data['name'], screen_name:data['screen_name'], atk:data['atk'], blk:data['blk'], ctc:data['ctc'], def:data['def'], spd:data['spd'])
end

skill = ActiveSupport::JSON.decode(File.read('/usr/src/app/poketool/db/skills.json'))
skill.each do |data|
  Skill.create(name:data['ename'], screen_name:data['jname'], type_id:data['type'], category:data['category'], power:data['power'], accuracy:data['accuracy'], pp:data['pp'])
end

monster = ActiveSupport::JSON.decode(File.read('/usr/src/app/poketool/db/pokedex.json'))
monster.each do |data|
  Monster.create(no:data['id'], name:data['name']['english'], screen_name:data['name']['japanese'], type1_id:data['type'][0], type2_id:data['type'][1], hp:data['base']['hp'], atk:data['base']['attack'], blk:data['base']['defense'], ctc:data['base']['sp. attack'], def:data['base']['sp. defense'], spd:data['base']['speed'])
end
