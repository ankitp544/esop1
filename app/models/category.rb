class Category
  include Mongoid::Document
  field :name, type: String
  has_many :sellers, class_name: 'Seller'
  validates :name, presence: true, uniqueness: true
end
