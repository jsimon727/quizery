class Quiz < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  has_many :scores
  accepts_nested_attributes_for :questions, :allow_destroy => true


  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end