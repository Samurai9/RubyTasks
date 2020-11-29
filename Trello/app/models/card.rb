# frozen_string_literal: true

class Card < ApplicationRecord
  has_many :todo, dependent: :destroy
  validates :title, presence: true

  # scope :actual, -> { where(created_at: Date.today - 1.month) }
  scope :actual, -> {}
end
