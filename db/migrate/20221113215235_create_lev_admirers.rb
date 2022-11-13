class CreateLevAdmirers < ActiveRecord::Migration[7.0]
  def change
    create_table :lev_admirers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.boolean :is_coming

      t.timestamps
    end
  end
end
