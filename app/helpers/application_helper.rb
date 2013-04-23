module ApplicationHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    markdown.render(text).html_safe
  end

  def errors_for(object)
    if object.errors.any?
      render 'shared/errors', :object => object
    end
  end

end
