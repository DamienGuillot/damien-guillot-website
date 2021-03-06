class Message < ApplicationRecord
  after_create :send_contact

  validates :name, presence: true
  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :content, length: { minimum: 20, maximum: 500 }


  private

  def send_contact
    MessageMailer.contact(self).deliver_now
  end
end
