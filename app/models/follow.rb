class Follow < ActiveRecord::Base
  attr_accessible :followee, :follower
  	belongs_to :user, :class_name => 'User', :foreign_key => 'followee'
	belongs_to :user, :class_name => 'User', :foreign_key => 'follower'
end

