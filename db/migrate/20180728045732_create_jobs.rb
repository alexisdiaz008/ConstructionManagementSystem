class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job_no
      t.string :name
      t.string :address
      t.string :job_type
      t.string :administrator
      t.string :px
      t.string :pm
      t.string :gs
      t.string :warranty_period
      t.string :textura

      t.timestamps
    end
  end
end
