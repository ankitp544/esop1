class Seller
  include Mongoid::Document
  field :owner_first_name, type: String
  field :owner_last_name, type: String
  field :phone_no, type: String
  field :email, type: String
  field :password, type: String
  validates :owner_first_name, presence: true
  validates :password, presence: true
  validates :email, presence: true, length: {maximum:105},
            uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
  validates :phone_no, presence: true, length: {minimum:10, maximum: 10}
end
