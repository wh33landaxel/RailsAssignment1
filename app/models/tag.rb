class Tag < ActiveRecord::Base
  attr_accessible :tag

  validate :tag, :presense => true
  has_and_belongs_to_many :statuses

end
