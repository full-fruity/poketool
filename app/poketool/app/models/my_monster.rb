class MyMonster < ApplicationRecord

  validates :user, presence: true
  validates :monster, presence: true
  validates :nicname, length: { in: 1..6 }

  ##個体値の上限、下限のバリデーション
  with_options numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31 } do
    validates :individual_hp
    validates :individual_atk
    validates :individual_blk
    validates :individual_ctc
    validates :individual_def
    validates :individual_spd
  end

  ##種族値の上限、下限のバリデーション
  with_options numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 252 } do
    validates :effort_hp
    validates :effort_atk
    validates :effort_blk
    validates :effort_ctc
    validates :effort_def
    validates :effort_spd
  end

  belongs_to :monster, :class_name => 'Monster'
  belongs_to :skill1, :class_name => 'Skill'
  belongs_to :skill2, :class_name => 'Skill'
  belongs_to :skill3, :class_name => 'Skill'
  belongs_to :skill4, :class_name => 'Skill'
  belongs_to :parsonality, :class_name => 'Parsonality'

end
