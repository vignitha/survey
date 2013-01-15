class Survay < ActiveRecord::Base
   belongs_to :user
   has_many :questions, :dependent => :destroy, :order => 'created_at'
   has_many :answers, :through => :questions, :dependent => :destroy
   attr_accessible :survey_name, :survey_description, :Created
   validates_presence_of :survey_name
   accepts_nested_attributes_for :questions, :allow_destroy => true
end
