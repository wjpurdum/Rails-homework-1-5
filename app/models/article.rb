class Article < ApplicationRecord
  alidates :title, presence: true,
                    length: { minimum: 5 }
end
