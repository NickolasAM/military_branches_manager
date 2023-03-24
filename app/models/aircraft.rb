class Aircraft < ApplicationRecord  
  belongs_to :military_branch 

  validates :military_branch_id, :name, :fixed_wing, :pilot_count, presence: true
end