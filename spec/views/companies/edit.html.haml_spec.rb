require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "MyString",
      :permalink => "MyString",
      :homepage_url => "MyString",
      :blog_url => "MyString",
      :blog_feed_url => "MyString",
      :twitter_username => "MyString",
      :category_code => "MyString",
      :number_of_employees => "MyString",
      :founded_year => "MyString",
      :founded_month => "MyString",
      :founded_day => "MyString",
      :email_address => "MyString",
      :phone_number => "MyString",
      :description => "MyText",
      :overview => "MyText"
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", company_path(@company), "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "input#company_permalink[name=?]", "company[permalink]"
      assert_select "input#company_homepage_url[name=?]", "company[homepage_url]"
      assert_select "input#company_blog_url[name=?]", "company[blog_url]"
      assert_select "input#company_blog_feed_url[name=?]", "company[blog_feed_url]"
      assert_select "input#company_twitter_username[name=?]", "company[twitter_username]"
      assert_select "input#company_category_code[name=?]", "company[category_code]"
      assert_select "input#company_number_of_employees[name=?]", "company[number_of_employees]"
      assert_select "input#company_founded_year[name=?]", "company[founded_year]"
      assert_select "input#company_founded_month[name=?]", "company[founded_month]"
      assert_select "input#company_founded_day[name=?]", "company[founded_day]"
      assert_select "input#company_email_address[name=?]", "company[email_address]"
      assert_select "input#company_phone_number[name=?]", "company[phone_number]"
      assert_select "textarea#company_description[name=?]", "company[description]"
      assert_select "textarea#company_overview[name=?]", "company[overview]"
    end
  end
end
