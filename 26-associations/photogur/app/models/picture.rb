class Picture < ActiveRecord::Base
  # 1-m with comments
  has_many :comments

  # m-m with tags
  has_and_belongs_to_many :tags
end
