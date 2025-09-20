class Child < ApplicationRecord
  belongs_to :father, optional: true
  belongs_to :Father, optional: true
end
