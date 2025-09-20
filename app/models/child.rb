class Child < ApplicationRecord
  belongs_to :Father, optional: true
end
