ActiveAdmin.register PracticeArea do
  form do |f|
    f.inputs do
      f.input :name
      f.input :overview
      f.input :attorneys, as: :select
    end
  end
end
