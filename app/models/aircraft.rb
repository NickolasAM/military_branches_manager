class Aircraft < ApplicationRecord  
  belongs_to :military_branch 

  validates :military_branch_id, :name, :pilot_count, presence: true
  validates :fixed_wing, inclusion: { in: [true, false] }
end