module ApplicationHelper

 def show_errors(error,field)
    error.messages[field].join(', ') if error.present? && !error.messages[field].nil?
 end


  def get_consession_price(price)
  	(0.95)*price.to_f
  end
end
