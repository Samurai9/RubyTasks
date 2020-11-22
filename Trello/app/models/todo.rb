# frozen_string_literal: true

class Todo < ApplicationRecord
  belongs_to :card
  validates :title, presence: true
  validates :description, presence: true
end
