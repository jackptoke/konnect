class InterpreterDetail < ApplicationRecord
  belongs_to :interpreter
  belongs_to :address
  enum sex: { male: 0, female: 1, unspecified: 2 }
  
end
