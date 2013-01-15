class Question < ActiveRecord::Base
   belongs_to :survay
   has_many :answers
   validates_presence_of :qus_text, :qus_type
   attr_accessible :qus_text, :qus_type, :question_id, :survay_id
   accepts_nested_attributes_for :answers, :allow_destroy => true 
   
end
