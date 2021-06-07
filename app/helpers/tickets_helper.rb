module TicketsHelper
  def days_ago(date)
    number_of_days = (Date.today - date.to_date).to_i
    number_of_days == 0 ? "Today" : "#{number_of_days} days ago"
  end
end
