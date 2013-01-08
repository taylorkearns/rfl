class AttorneyPractice < ActiveRecord::Base
  attr_accessible :attorney_id, :practice_area_id

  belongs_to :attorney
  belongs_to :practice_area
end
