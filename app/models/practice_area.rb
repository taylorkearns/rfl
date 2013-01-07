class PracticeArea < ActiveRecord::Base
  attr_accessible :name, :overview, :attorney_ids

  has_many :articles
  has_many :links

  has_many :attorneys_practice_areas
  has_many :attorneys, through: :attorneys_practice_areas

  scope :ordered, order('name')

  def practicing_attorneys
    attorneys.ordered
  end
end
