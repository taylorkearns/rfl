class AttorneysPracticeArea < ActiveRecord::Base
  belongs_to :attorney
  belongs_to :practice_area
end
