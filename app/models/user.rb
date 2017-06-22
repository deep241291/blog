class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :events       
  has_many :posts
  has_many :comments
  validates :name, presence: { message: "User Name can't be blank"}, length: { maximum: 100, message: "User Name can't be greater than 100 character" }
  acts_as_voter
end
