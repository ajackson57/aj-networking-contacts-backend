# frozen_string_literal: true

class AddUserToLogs < ActiveRecord::Migration[5.1]
  def change
    add_reference :logs, :user, foreign_key: true
  end
end
