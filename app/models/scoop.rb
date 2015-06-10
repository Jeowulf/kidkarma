class Scoop < ActiveRecord::Base
  belongs_to :kid
  validates :headline, presence: true
  validates :story, presence: true

  before_save :default_values

  private

  def default_values
    self.completed ||= false
    nil                           # required so that TX will not rollback!!!
  end
end