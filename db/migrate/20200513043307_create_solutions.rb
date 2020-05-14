class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.text  :answer
      t.integer :question_id
      
      t.timestamps
    end
  end
end
