class Category < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 20 }
  has_many :prototypes, through: :prototype_categories
  has_many :prototype_categories, dependent: :destroy
end
