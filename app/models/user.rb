class User < ApplicationRecord
  validates :username,  presence: true,
                        uniqueness: true,
                        format: { without: /\s/ }

  validates :bio, presence: true
end
