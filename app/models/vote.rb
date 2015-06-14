class Vote < ActiveRecord::Base
  belongs_to :kid
  belongs_to :scoop
end
