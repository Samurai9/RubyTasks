class Card < ApplicationRecord
	has_many :todo, dependent: :destroy
	validates :title, presence: true
end
