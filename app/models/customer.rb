class Customer
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :phone_no, type: String
  field :email, type: String
  field :password, type: String
  validates :first_name, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :phone_no, presence: true
end
