# frozen_string_literal: true

class AddCardToTodos < ActiveRecord::Migration[6.0]
  def change
    add_reference :todos, :card, null: false, foreign_key: true
  end
end
