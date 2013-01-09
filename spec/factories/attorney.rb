FactoryGirl.define do
  sequence :attorney do |n|
    first_name "Atticus_#{n}"
    last_name "Finch_#{n}"
    email "lawyer_#{n}@lawfirm.com"
  end
end
