class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50, minimum: 6 }
    validates :password, presence: true,  length: { maximum: 30, minimum: 6 }
    validates :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email invalid"  },
              uniqueness: { case_sensitive: false },
              length: { minimum: 4, maximum: 254 }
   
    has_secure_password
end
