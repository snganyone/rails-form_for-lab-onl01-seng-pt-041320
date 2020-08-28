class CreateSchoolClasses < ActiveRecord::Migration
    def change
        create_table :school_class do |c|
            c.string :title
            c.integer :room_number

        end
    end
end