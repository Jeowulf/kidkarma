class Parent < ActiveRecord::Base
   has_many :kids, dependent: :destroy

  before_save { email.downcase! }

  validates :first_name, :last_name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 80 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password

  validates :password, length: { minimum: 8, maximum: 20 }

  def Parent.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Parent.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def to_s
    email
  end
end
