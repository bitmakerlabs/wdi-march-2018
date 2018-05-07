class MonstersController < ApplicationController
  def index
    @monsters = Monster.all

    respond_to do |format|
      format.html
      format.text
      format.json do
        render json: @monsters.map { |monster|
           monster.to_json
        }
      end
    end

  end
end


