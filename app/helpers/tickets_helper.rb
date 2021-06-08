module TicketsHelper
  def days_ago(date)
    number_of_days = (Date.today - date.to_date).to_i
    number_of_days == 0 ? "Today" : "#{number_of_days} days ago"
  end

  def last_activity(ticket)
    ticket.comments.any? ? humanized_date(ticket.comments.last.updated_at) : humanized_date(ticket.updated_at)
  end
end
