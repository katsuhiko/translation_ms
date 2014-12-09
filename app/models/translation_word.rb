class TranslationWord < ActiveRecord::Base
  belongs_to :work
  belongs_to :locale
end
