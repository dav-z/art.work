class Discipline < ApplicationRecord
  has_many :user_disciplines
  has_many :users, through: :user_disciplines
end
