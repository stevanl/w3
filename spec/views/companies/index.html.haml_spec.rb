require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :permalink => "Permalink",
        :homepage_url => "Homepage Url",
        :blog_url => "Blog Url",
        :blog_feed_url => "Blog Feed Url",
        :twitter_username => "Twitter Username",
        :category_code => "Category Code",
        :number_of_employees => "Number Of Employees",
        :founded_year => "Founded Year",
        :founded_month => "Founded Month",
        :founded_day => "Founded Day",
        :email_address => "Email Address",
        :phone_number => "Phone Number",
        :description => "MyText",
        :overview => "MyText"
      ),
      stub_model(Company,
        :name => "Name",
        :permalink => "Permalink",
        :homepage_url => "Homepage Url",
        :blog_url => "Blog Url",
        :blog_feed_url => "Blog Feed Url",
        :twitter_username => "Twitter Username",
        :category_code => "Category Code",
        :number_of_employees => "Number Of Employees",
        :founded_year => "Founded Year",
        :founded_month => "Founded Month",
        :founded_day => "Founded Day",
        :email_address => "Email Address",
        :phone_number => "Phone Number",
        :description => "MyText",
        :overview => "MyText"
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
    assert_select "tr>td", :text => "Homepage Url".to_s, :count => 2
    assert_select "tr>td", :text => "Blog Url".to_s, :count => 2
    assert_select "tr>td", :text => "Blog Feed Url".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter Username".to_s, :count => 2
    assert_select "tr>td", :text => "Category Code".to_s, :count => 2
    assert_select "tr>td", :text => "Number Of Employees".to_s, :count => 2
    assert_select "tr>td", :text => "Founded Year".to_s, :count => 2
    assert_select "tr>td", :text => "Founded Month".to_s, :count => 2
    assert_select "tr>td", :text => "Founded Day".to_s, :count => 2
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
