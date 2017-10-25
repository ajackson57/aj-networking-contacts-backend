# frozen_string_literal: true

class Contact < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  has_many :logs
end
