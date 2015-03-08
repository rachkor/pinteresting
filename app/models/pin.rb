class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => {:medium => "400x400>", :thumb => "100x100>"}
	validates_attachment :image, presence: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
	validates :description, presence: true
end
