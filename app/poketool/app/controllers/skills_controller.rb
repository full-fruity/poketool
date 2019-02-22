class SkillsController < ApplicationController
  def index
    @skills = Skill.order(:screen_name)
  end

  def show
    @skill = Skill.find_by(name: params[:name])
  end

end
