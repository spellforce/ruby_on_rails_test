class CreateStudentxes < ActiveRecord::Migration[5.1]
  def change
    create_table :studentxes do |t|
      t.string :sno
      t.string :sname
    end
  end
end
