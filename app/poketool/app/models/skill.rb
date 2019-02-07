class Skill < ApplicationRecord
  belongs_to :type, :class_name => 'Type'
end
