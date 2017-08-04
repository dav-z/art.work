class Art < ApplicationRecord
  belongs_to :user
  validates :image, presence: true
  validates :title, presence: true
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/default_pic.svg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
