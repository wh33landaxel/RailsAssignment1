class Status < ActiveRecord::Base
  attr_accessible :geocode, :image_url, :status, :user_id

    validates :status,:presence => true
	validates_format_of :image_url, :with => URI::regexp(%w(http https))
    belongs_to :user
    has_many :statuses, :class_name => "Status",
    :foreign_key => "status"
    belongs_to :statuses, :class_name => "Status"

end
