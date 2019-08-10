class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  field :first_name, type: String
  field :last_name, type: String
  field :phone_no, type: String
  field :email, type: String
  field :password, type: String
  field :password_digest, :type => String
  has_secure_password
  validates :first_name, presence: true
  validates :password, presence: true
  validates :email, presence: true, length: {maximum:105},
            uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
  # validates email or phone_no
end
