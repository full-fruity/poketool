class MonstersController < ApplicationController
  def index
    @monsters = Monster.page(params[:page]).per(20)
  end

  def show
    @monster = Monster.find_by(name: params[:name])
    @base_total = @monster.hp + @monster.atk + @monster.blk + @monster.ctc + @monster.def + @monster.spd
  end

end
