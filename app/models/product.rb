class Product < ActiveRecord::Base
  has_attached_file :picture
  attr_accessible :category_id, :manufacturer_id, :model, :name, :picture, :description
  
 
  belongs_to :category
  belongs_to :manufacturer
  
  validates :name, :model, :category_id, :manufacturer_id, :presence => true
end
