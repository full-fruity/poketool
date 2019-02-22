class SkillsController < ApplicationController
  def index
    @skills = Skill.order(:screen_name)
  end
end
