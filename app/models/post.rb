class Post < ActiveRecord::Base
	#include ActiveModel::ForbiddenAttributesProtection
	has_many :comments 
	validates :title, presence: true, length: {minimum: 5}
  	attr_accessible :text, :title, :id

end
