class MonstersController < ApplicationController
  def index
    @monsters = Monster.page(params[:page]).per(20)
  end

  def show
    @monster = Monster.find_by(name: params[:name])
    @base_total = @monster.hp + @monster.atk + @monster.blk + @monster.ctc + @monster.def + @monster.spd
  end

  def search

    if params[:name] == nil
      # return head(:bad_request)
      raise ActionController::BadRequest
    end

    if params[:name].length == 0
      # return head(:bad_request)
      raise ActionController::BadRequest
    end

    if params[:name].length > 6
      # return head(:bad_request)
      raise ActionController::BadRequest
    end

    names = Monster.where('screen_name LIKE ?', "#{params[:name].tr('ぁ-ん','ァ-ン')}%")
    monster = []
    names.each do |name|
      monster.push({:name => name.name, :screen_name => name.screen_name})
    end

    monster.to_json
    render :json => monster

  end

end
