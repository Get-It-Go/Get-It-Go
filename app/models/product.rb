class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	def self.search(search)
		where(["name LIKE ? OR content LIKE ?", "%#{search}%", "%#{search}%"])
	end
	belongs_to :user
end
