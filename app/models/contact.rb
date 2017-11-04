# frozen_string_literal: true

class Contact < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  has_many :logs, dependent: :destroy
end
