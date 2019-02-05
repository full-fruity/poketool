class Type < ApplicationRecord
  has_many :stronging_from_type, class_name: 'StrongPoint', foreign_key: 'from_type_id'
  # has_many :stronging_to_type,   class_name: 'StrongPoint', foreign_key: 'to_type_id'
  has_many :strong_points, through: :stronging_from_type, source: 'to_type'
  # has_many :stronged_to_type,   through: :stronging_to_type,   source: 'from_type'

  has_many :weaking_from_type, class_name: 'WeakPoint', foreign_key: 'from_type_id'
  # has_many :weaking_to_type,   class_name: 'WeakPoint', foreign_key: 'to_type_id'
  has_many :weak_points, through: :weaking_from_type, source: 'to_type'
  # has_many :weaked_to_type,   through: :weaking_to_type,   source: 'from_type'

  has_many :invaliding_from_type, class_name: 'Invalid', foreign_key: 'from_type_id'
  # has_many :weaking_to_type,   class_name: 'WeakPoint', foreign_key: 'to_type_id'
  has_many :invalids, through: :invaliding_from_type, source: 'to_type'
  # has_many :weaked_to_type,   through: :weaking_to_type,   source: 'from_type'
end
