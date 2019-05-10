class Narrative < ApplicationRecord
  belongs_to :disorder
  accepts_nested_attributes_for :disorder

end
