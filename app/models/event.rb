class Event < ActiveRecord::Base
	has_and_belongs_to_many :users
	mount_uploader :avatar, AvatarUploader

    extend GeneralQuery

    validates :name, presence: { message: "Event Name can't be blank"}, length: { maximum: 100, message: "Event Name can't be greater than 100 character" }
    validates :description, presence: { message: "Event Description can't be blank" }, length: { maximum: 1000, message: "Event Description can't be greater than 1000 character" }
    validates :address, presence: {message: "Address can't be blank"}, length: { maximum: 1000, message: "Address can't be greater than 1000 character" }
    validates :start_date, presence: { message: "Event Start date can't be blank"}
    validates :end_date, presence: { message: "Event End date can't be blank"}
    validates :contact_email, format: { with: EMAIL_REGEX, message: "Wrong Email Id"}
    validates :contact_no, format: { with: PHONE_NUMBER_REGEX, message: "Wrong Contact No Number", :multiline => true }, length: { maximum: 11, message: "Phone Number can't be greater than 11 character" }


	def self.get_event_detail(user)

		Event.order(created_at: :desc).map{|h| {id: h.id, name: h.name, start_date: get_date_format(h.start_date),\
		end_date: get_date_format(h.end_date), fees: h.fees, created_by_id: h.created_by, created_by: (User.find_by_id(h.created_by).name if User.find_by_id(h.created_by)),\
		contact_email: h.contact_email, contact_no: h.contact_no, status: (user.present? and h.created_by == user.id ? ENABLE : DISABLE ),\
		event_valid: event_valid(h.start_date), attend: (user.present? ? (h.users.include?(user) == true ?  ENABLE : DISABLE): DISABLE)}}

	end

	def get_user_name
		self.users.map{|h| {email: h.email, name: h.name, gender: h.gender.titleize}}
	end

	def get_name
		User.find_by_id(self.created_by).name
	end
end
