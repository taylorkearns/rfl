class Attorney < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :list_order

  scope :ordered, order('list_order')
end
