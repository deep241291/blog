module GeneralQuery

  def get_date_format(date)
    date.strftime("#{date.day.ordinalize} %b %y")
  end

  def event_valid(date)
  	(Date.today  <= date == true) ? ENABLE : DISABLE
  end
  
end