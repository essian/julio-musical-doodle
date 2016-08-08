class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :teams, index: true, foreign_key: true
      t.references :progress_reports, index: true, foreign_key: true
      t.references :owned_teams, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
