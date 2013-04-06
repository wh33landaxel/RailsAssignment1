class Status < ActiveRecord::Base
  attr_accessible :geocode, :image_url, :status, :user_id

    validates :status,:presence => true
	validates_format_of :image_url, :with => URI::regexp(%w(http https))
	belongs_to :user
	#rails generate migrate 
	has_and_belongs_to_many(:statuses,
    :join_table => "status_connections",
    :foreign_key => "status_a_id",
    :association_foreign_key => "status_b_id")
end
