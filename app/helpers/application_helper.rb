module ApplicationHelper
  def humanized_date(date)
    date.strftime("%B %d, %Y")
  end
end
