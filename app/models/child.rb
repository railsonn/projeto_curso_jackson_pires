class Child < ApplicationRecord
  belongs_to :father, optional: true
end
