class Post < ApplicationRecord
  belongs_to :user
  validates :photo, presence: true
  validates :caption, presence: true
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/default_pic.svg"
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
