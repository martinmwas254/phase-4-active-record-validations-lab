class Author < ApplicationRecord
     validates :name, uniqueness: { case_sensitive: true }, presence: true
    validates :phone_number, length: { is: 10 }, presence: true
end
