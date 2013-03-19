class User < ActiveRecord::Base
attr_accessible :email, :name

validates_uniqueness_of :name
validates :name,:presence => true
validates_format_of :email, :with => /@/, :message => 'email needs @'





end
