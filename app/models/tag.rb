class Tag < ActiveRecord::Base
  attr_accessible :tag

  validate :tag, :presense => true
end
