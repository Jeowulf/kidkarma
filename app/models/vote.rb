class Vote < ActiveRecord::Base
  belongs_to :kid
  belongs_to :scoop
  validates_uniqueness_of :kid_id, :scope => [:scoop_id]
end
