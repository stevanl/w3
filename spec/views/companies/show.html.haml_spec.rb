require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Permalink/)
    rendered.should match(/Homepage Url/)
    rendered.should match(/Blog Url/)
    rendered.should match(/Blog Feed Url/)
    rendered.should match(/Twitter Username/)
    rendered.should match(/Category Code/)
    rendered.should match(/Number Of Employees/)
    rendered.should match(/Founded Year/)
    rendered.should match(/Founded Month/)
    rendered.should match(/Founded Day/)
    rendered.should match(/Email Address/)
    rendered.should match(/Phone Number/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
