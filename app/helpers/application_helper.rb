module ApplicationHelper
  def avatar_bg_color(string)
    percentage = string.sum % 360

    "hsl(#{percentage}, 100%, 50%)"
  end
end
