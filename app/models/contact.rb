# frozen_string_literal: true

class Contact < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
end
