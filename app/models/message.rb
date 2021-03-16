class Message < ApplicationRecord
  belongs_to :article

  validates :name, presence: true
  validates :email, presence: true
  validates :content, presence: true
  validates :article, presence: true

  def send_email
    p "piew piew sending email "
    p "Succesfully sent"
    true
  end
end
