class Monster < ActiveRecord::Base

  def to_json
    {
      full_name: self.name,
      home: self.home,
      creepiness: self.creepiness
    }
  end
end
