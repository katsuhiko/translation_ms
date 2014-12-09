class Word < ActiveRecord::Base
  belongs_to :dictionary
  has_many :translation_word
end
