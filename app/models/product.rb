class Product
  validates_format_of :price, with: /^\d+??(?:\.\d{0,2})?$/
  validates_presence_of :name
  validates_presence_of :description
  has_attached_file :pic, :styles => { :thumb => "150x150#", :medium => "400x400#" }
  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :price
end
