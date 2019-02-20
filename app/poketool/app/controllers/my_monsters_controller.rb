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
    redirect_to('/my_monster')

  end

  def index
    @monsters = MyMonster.all
  end

  def show
    @my_monster = MyMonster.find_by(id: params[:id])
    @monster = @my_monster.monster
  end

  def destroy
    @my_monster = MyMonster.find_by(id: params[:id])
    # binding.pry
    authorize @my_monster
    @my_monster.destroy
    redirect_to('/my_monster')
  end

end
