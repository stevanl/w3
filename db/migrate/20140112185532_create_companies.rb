class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :permalink
      t.string :homepage_url
      t.string :blog_url
      t.string :blog_feed_url
      t.string :twitter_username
      t.string :category_code
      t.string :number_of_employees
      t.string :founded_year
      t.string :founded_month
      t.string :founded_day
      t.string :email_address
      t.string :phone_number
      t.text :description
      t.text :overview

      t.timestamps
    end
  end
end
