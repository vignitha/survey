class CreateSurvays < ActiveRecord::Migration
  def self.up
    create_table :survays do |t|
      t.string :survey_name
      t.string :survey_description
      t.datetime :Created, :null => false
      t.timestamps
    end
  end
 def self.down
    drop_table :survays
  end
 end
