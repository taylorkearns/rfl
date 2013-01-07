ActiveAdmin.register Attorney do
  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :practice_areas, as: :check_boxes, collection: PracticeArea.order('name')
    end
    f.buttons
  end
end
