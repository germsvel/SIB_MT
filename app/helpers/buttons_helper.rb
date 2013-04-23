module ButtonsHelper
 
 def edit_btn(text)
    return "<i class='icon-edit'>#{text}</i>".html_safe
  end

  def add_btn(text)
    return "<i class='icon-plus'>#{text}</i>".html_safe
  end

end