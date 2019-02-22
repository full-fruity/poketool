class SkillsController < ApplicationController
  def index
    @skills = Skill.order(:screen_name)
    @skills = Skill.page(params[:page]).per(20)
  end

  def show
    @skill = Skill.find_by(name: params[:name])
  end

end
