ActiveAdmin.register PracticeArea do
  form do |f|
    f.inputs do
      f.input :name
      f.input :overview, input_html: { class: 'tinymce' }
      f.input :attorneys, as: :check_boxes, collection: Attorney.order('last_name')
    end
    f.buttons
  end
end
