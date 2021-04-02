class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :question_context, null: false
      t.string :question_image
      t.references :chapter, foreign_key: true
      t.timestamps
    end
  end
end
