class Message < ApplicationRecord
  belongs_to :article

  validates :name, presence: true
  validates :email, presence: true
  validates :content, presence: true
  validates :article, presence: true

  after_save :send_to_each_user

  private

  def send_to_each_user
    User.all.each do |user|
      Pony.mail(
        to: user.email,
        via: :smtp,
        subject: "New contact message for EA2",
        body: create_body,
        via_options: {
          address: "smtp.gmail.com",
          port: 587,
          enable_starttls_auto: true,
          user_name: ENV["GMAIL_EMAIL"],
          password: ENV["GMAIL_PASSWORD"],
          authentication: :login
        }
      )
    end
  end

  def create_body
    "DON'T REPLY TO THIS EMAIL ADDRESS \n--------------\n\nThere is a new contact form created!\nArticle: #{article.title}\n\nName: #{name}\nEmail: #{email}\n\nMessage: #{content}"
  end
end
