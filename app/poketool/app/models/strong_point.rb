class StrongPoint < ApplicationRecord
  belongs_to :from_type, :class_name => 'Type'
  belongs_to :to_type,   :class_name => 'Type'
end
