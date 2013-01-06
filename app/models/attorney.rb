class Attorney < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :list_order

  has_many :practice_areas, through: :attorneys_practice_areas

  scope :ordered, order('list_order')
end
