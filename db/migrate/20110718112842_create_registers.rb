class CreateRegisters < ActiveRecord::Migration
  def self.up
    create_table :registers do |t|
    
      t.date :date
      t.string :present
      t.string :late
      t.string :absent

      t.timestamps
    end
     add_foreign_key(:registers, :employee_id, :employees, :id)

  end

  def self.down
    drop_table :registers
  end
end
