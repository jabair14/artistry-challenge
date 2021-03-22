class Artist < ApplicationRecord
    has_many :instruments
    validates :name, length: { minimum: 2 }
    validates :title, uniqueness: :true 
    validates :age, numericality: :true 
end
