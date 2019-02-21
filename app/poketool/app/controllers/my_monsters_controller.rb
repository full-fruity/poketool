class MyMonstersController < ApplicationController
  before_action :authenticate_user!

  def top
  end

  def create

    monster = Monster.find_by(name: params[:name])
    parsonality = Parsonality.find_by(name: params[:parsonality])
    skill1 = Skill.find_by(name: params[:skill1])
    skill2 = Skill.find_by(name: params[:skill2])
    skill3 = Skill.find_by(name: params[:skill3])
    skill4 = Skill.find_by(name: params[:skill4])

    mymonster = MyMonster.new(
      user_id: current_user.id,
      monster_id: monster.id,
      nicname: params[:nicname],
      parsonality_id: parsonality.id,
      individual_hp: params[:individual_hp],
      individual_atk: params[:individual_atk],
      individual_blk: params[:individual_blk],
      individual_ctc: params[:individual_ctc],
      individual_def: params[:individual_def],
      individual_spd: params[:individual_spd],
      effort_hp: params[:effort_hp],
      effort_atk: params[:effort_atk],
      effort_blk: params[:effort_blk],
      effort_ctc: params[:effort_ctc],
      effort_def: params[:effort_def],
      effort_spd: params[:effort_spd],
      skill1_id: skill1.id,
      skill2_id: skill2.id,
      skill3_id: skill3.id,
      skill4_id: skill4.id
    )

    mymonster.save
    redirect_to("/my_monster/#{mymonster.id}")

  end

  def index
    @monsters = MyMonster.all
  end

  def status_calculation(base, individual, effort, personality)
    (((base + (individual / 2).floor + (effort / 8).floor) + 5) * personality).floor
  end

  def show

    @my_monster = MyMonster.find_by(id: params[:id])
    @monster = @my_monster.monster

    # HP ステータス計算式
    @my_monster_hp = (@monster.hp + @my_monster.individual_hp / 2 + @my_monster.effort_hp / 8 ) + 60

    #攻撃ステータス計算
    @my_monster_atk = status_calculation(@monster.atk, @my_monster.individual_atk, @my_monster.effort_atk, @my_monster.parsonality.atk)

    #防御ステータス計算
    @my_monster_blk = status_calculation(@monster.blk, @my_monster.individual_blk, @my_monster.effort_blk, @my_monster.parsonality.blk)

    #特攻ステータス計算
    @my_monster_ctc = status_calculation(@monster.ctc, @my_monster.individual_ctc, @my_monster.effort_ctc, @my_monster.parsonality.ctc)

    #特防ステータス計算
    @my_monster_def = status_calculation(@monster.def, @my_monster.individual_def, @my_monster.effort_def, @my_monster.parsonality.def)

    #素早ステータス計算
    @my_monster_spd = status_calculation(@monster.spd, @my_monster.individual_spd, @my_monster.effort_spd, @my_monster.parsonality.spd)

    #技検索
    @my_monster_skill1 = Skill.find_by(id: @my_monster.skill1_id)
    @my_monster_skill2 = Skill.find_by(id: @my_monster.skill2_id)
    @my_monster_skill3 = Skill.find_by(id: @my_monster.skill3_id)
    @my_monster_skill4 = Skill.find_by(id: @my_monster.skill4_id)

    #性格検索
    @my_monster_personality = Parsonality.find_by(id: @my_monster.parsonality_id)
  end

  def destroy
    @my_monster = MyMonster.find_by(id: params[:id])
    authorize @my_monster
    @my_monster.destroy
    redirect_to('/my_monster')
  end

end
