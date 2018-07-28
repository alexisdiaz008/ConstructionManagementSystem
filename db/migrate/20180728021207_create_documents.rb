class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.text :content

      t.timestamps
    end
  end
end
