class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_disciplines
  has_many :disciplines, through: :user_disciplines, dependent: :destroy
  has_many :arts, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_attached_file :propic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/default/:style/default_pic.png"
  validates_attachment_content_type :propic, content_type: /\Aimage\/.*\z/
  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }
def full_name
  "#{fname} #{lname}".strip
end
end
