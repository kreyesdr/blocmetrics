class Application < ActiveRecord::Base
  belongs_to :user
  has_many :event, dependent: :destroy
end
