class AddScopeRefToDocument < ActiveRecord::Migration[5.2]
  def change
    add_reference :documents, :scope, foreign_key: true
  end
end
