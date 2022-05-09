class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.integer  :physician_id
      t.integer  :patient_id
    
      t.references :physician, index: true, foreign_key: true, null: false
      t.references :patient, index: true, foreign_key: true, null: false


      t.timestamps
  
    end
  end
end
