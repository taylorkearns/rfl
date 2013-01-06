class PracticeArea < ActiveRecord::Base
  attr_accessible :name, :overview

  has_many :articles
  has_many :links

  has_many :attorneys, through: :attorneys_practice_areas

  scope :ordered, order('name')
end
