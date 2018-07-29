class Scope < ApplicationRecord
  belongs_to :job
  has_many :documents
end
