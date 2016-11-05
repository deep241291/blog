class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :events       

  validates :name, presence: { message: "User Name can't be blank"}, length: { maximum: 100, message: "User Name can't be greater than 100 character" }
  validates :gender, presence: { message: "Gender can't be blank"}
end
