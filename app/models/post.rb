class Post < ActiveRecord::Base
	belongs_to :user
	mount_uploader :avatar, AvatarUploader
	has_many  :comments
	acts_as_votable
end
