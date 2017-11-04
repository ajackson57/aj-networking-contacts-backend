class Log < ApplicationRecord
  belongs_to :contact
  belongs_to :user
  validates :contact, presence: true
  validates :user, presence: true
end
