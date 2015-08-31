class CreateCodeSnippets < ActiveRecord::Migration
  def change
    create_table :code_snippets do |t|
      t.references :language, index: true, foreign_key: true
      t.string :title
      t.text :work

      t.timestamps null: false
    end
  end
end
