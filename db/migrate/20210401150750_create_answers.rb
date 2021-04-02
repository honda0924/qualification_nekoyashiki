class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :answer_context
      t.string :answer_image
      t.references :question, foreign_key: true
      t.boolean :correct_flg
      
      t.timestamps
    end
  end
end
