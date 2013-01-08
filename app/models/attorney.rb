class Attorney < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :last_name, :email,
    :bio, :list_order, :practice_area_ids

  has_many :attorney_practices
  has_many :practice_areas, through: :attorney_practices

  scope :ordered, order('list_order')

  def to_s
    "#{first_name} #{middle_name} #{last_name}"
  end
end
