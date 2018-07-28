class CreateScopes < ActiveRecord::Migration[5.2]
  def change
    create_table :scopes do |t|
      t.references :job, foreign_key: true
      t.string :cost_code
      t.string :description
      t.string :scope_type
      t.string :subcontractor
      t.string :contract_no
      t.string :project_name
      t.string :document_type
      t.string :link_contract
      t.string :governing_contract
      t.string :vendor
      t.string :vendor_prequalified
      t.string :required_documentation
      t.string :legal_name
      t.string :address
      t.string :authorized_agent_1
      t.string :authorized_agent_2
      t.string :workers
      t.string :compensation
      t.string :bond_requirement
      t.string :default_retainage
      t.string :insurance_type

      t.timestamps
    end
  end
end
