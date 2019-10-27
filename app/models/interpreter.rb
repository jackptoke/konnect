class Interpreter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # def authenticatable_salt
  #   "#{super}#{session_token}"
  # end

  # def invalidate_session!
  #   self.session_token = SecureRandom.hex
  # end
end
