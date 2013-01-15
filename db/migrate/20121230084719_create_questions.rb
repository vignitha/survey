class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :qus_text
      t.string :qus_type
      t.integer :survay_id
      t.timestamps
    end
  end
  def self.down
   drop_table :questions 
 end
end
