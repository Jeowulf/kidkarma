class Scoop < ActiveRecord::Base
  belongs_to :kid
  has_many :votes
  validates :headline, presence: true
  validates :story, presence: true

  before_save :default_values

  private

  def default_values
    self.headline ||= false
    self.story ||= false
    nil                           # required so that TX will not rollback!!!
  end
end
