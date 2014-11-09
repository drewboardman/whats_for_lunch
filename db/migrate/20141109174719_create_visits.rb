class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.belongs_to :user, index: true
      t.belongs_to :restaurant, index: true
      t.date :last_visit

      t.timestamps
    end
  end
end
