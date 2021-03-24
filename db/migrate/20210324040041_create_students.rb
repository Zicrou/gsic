class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.date :date_of_birth
      t.string :passport
      t.date :passport_expiration_date
      t.string :address
      t.date :year_of_chinese_language
      t.string :university_of_chinese_language_year
      t.date :starting_year_major
      t.string :university_major
      t.string :major
      t.integer :major_duration
      t.date :graduation_year
      t.string :level_of_major
      t.string :telephone
      t.string :photo
      t.string :passport_picture
      t.string :are_you_in_china
      t.string :email
      t.string :language_province

      t.timestamps
    end
  end
end
