class Attorney < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :list_order,
    :practice_area_ids

  has_many :attorneys_practice_areas
  has_many :practice_areas, through: :attorneys_practice_areas

  scope :ordered, order('list_order')

  def to_s
    "#{first_name} #{last_name}"
  end
end
