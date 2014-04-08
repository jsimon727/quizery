class Quiz < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  has_many :scores
  accepts_nested_attributes_for :questions, :allow_destroy => true
end

