class MonstersController < ApplicationController
  def index
    @monsters = Monster.page(params[:page]).per(20)
  end

  def show
    @monster = Monster.find_by(id: params[:id])
  end

end
