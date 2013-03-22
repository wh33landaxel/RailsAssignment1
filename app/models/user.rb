class User < ActiveRecord::Base
attr_accessible :email, :name

validates_uniqueness_of :name
validates :name,:presence => true
validates_format_of :email, :with => /@/, :message => 'email needs @'
has_many :statuses
has_many :followers


def count_statuses(id)
	Status.where(:user_id => :id).count
end 

def avg_count(id)
	Status.where(:user_id => :id).average
end

def most_popular
	Follow.where(:followers => :name).count.maximum
end

def call_notify

end