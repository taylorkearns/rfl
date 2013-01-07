class PracticeArea < ActiveRecord::Base
  attr_accessible :name, :overview, :attorney_ids

  has_many :articles
  has_many :links

  has_many :attorney_practices
  has_many :attorneys, through: :attorney_practices

  scope :ordered, order('name')

  def practicing_attorneys
    attorneys.ordered
  end
end
