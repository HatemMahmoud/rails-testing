class Task < ActiveRecord::Base
  attr_accessible :name
  belongs_to :project
  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :project_id }
end
