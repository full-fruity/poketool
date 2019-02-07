# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


skill = ActiveSupport::JSON.decode(File.read('/usr/src/app/poketool/db/skills.json'))
skill.each do |data|
  Skill.create(name:data['ename'], screen_name:data['jname'], element:data['type'], category:data['category'], power:data['power'], accuracy:data['accuracy'], pp:data['pp'])
end

monster = ActiveSupport::JSON.decode(File.read('/usr/src/app/poketool/db/pokedex.json'))
monster.each do |data|
  Monster.create(no:data['id'], name:data['name']['english'], screen_name:data['name']['japanese'], type1:data['type'][0], type2:data['type'][1], hp:data['base']['hp'], atk:data['base']['attack'], blk:data['base']['defense'], ctc:data['base']['sp. attack'], def:data['base']['sp. defense'], spd:data['base']['speed'])
end
