class Seller
  include Mongoid::Document
  field :owner_first_name, type: String
  field :owner_last_name, type: String
  field :phone_no, type: String
  field :email, type: String
  field :password, type: String
  validates :password, presence: true
  validates :email, presence: true
  validates :phone_no, presence: true
  validates :owner_first_name, presence: true
end
