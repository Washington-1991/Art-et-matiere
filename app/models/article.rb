class Article < ApplicationRecord
  validates :name, :photos, :description, :quantity, :price, :category, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than: 0 }
  validates :category, inclusion: { in: ["Verre", "Carton", "Papier de soie", "Papier mâché", "Fils"] }
end
