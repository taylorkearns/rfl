module ApplicationHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(autolink: true))

    markdown.render(text).html_safe
  end
end
