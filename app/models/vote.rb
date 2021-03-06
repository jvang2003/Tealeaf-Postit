# encoding: UTF-8

# setting up relationships for vote table
class Vote < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  belongs_to :voteable, polymorphic: true

  validates_uniqueness_of :creator, scope: [:voteable_id, :voteable_type]
end
