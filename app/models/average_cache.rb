class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Kid"
  belongs_to :rateable, :polymorphic => true
end
