class Role < ApplicationRecord
  has_many :users

  ROLE_ADMIN ='admin'.freeze
  ROLE_USER ='user'.freeze
end