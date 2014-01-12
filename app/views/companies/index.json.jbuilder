json.array!(@companies) do |company|
  json.extract! company, :id, :name, :permalink, :homepage_url, :blog_url, :blog_feed_url, :twitter_username, :category_code, :number_of_employees, :founded_year, :founded_month, :founded_day, :email_address, :phone_number, :description, :overview
  json.url company_url(company, format: :json)
end
