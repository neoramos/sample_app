require 'spec_helper'

describe "Pages" do

  #describe "Home page" do

   # it "should have the content 'Sample App'" do
   #   visit '/pages/home'
   #   page.should have_content('Sample App')
   # end
  #end
  
  subject { page }
  
  describe "Home page" do
	before { visit root_path }
	
	it { should have_selector('h1', content: 'Sample App') }
	it { should have_selector('title', content: title('')) }
    it { should_not have_selector('title', content: '| Home') }
	
	#it "should have the h1 'Sample App'" do
    #  visit root_path
    #  page.should have_selector('h1', content: 'Sample App')
    #end

    #it "should have the base title" do
      #visit root_path
    #  page.should have_selector('title',
    #                    content: "Ruby on Rails Tutorial Sample App")
    #end

    #it "should not have a custom page title" do
      #visit root_path
    #  page.should_not have_selector('title', content: '| Home')
    #end
  end

  describe "Help page" do
	before { visit help_path }
    
	it { should have_selector('h1', content: 'Help') }
	it { should have_selector('title', content: title('Help')) }
	
	#it "should have the h1 'Help'" do
    #  visit help_path
    #  page.should have_selector('h1', content: 'Help')
    #end

    #it "should have the title 'Help'" do
    #  visit help_path
    #  page.should have_selector('title',
    #                    content: "Ruby on Rails Tutorial Sample App | Help")
    #end
  end

  describe "About page" do
	before { visit about_path }
	
	it { should have_selector('h1', content: 'About Us') }
	it { should have_selector('title', content: title('About Us')) }
	
    #it "should have the h1 'About'" do
    #  visit about_path
    #  page.should have_selector('h1', content: 'About Us')
    #end

    #it "should have the title 'About Us'" do
    #  visit about_path
    #  page.should have_selector('title',
    #                content: "Ruby on Rails Tutorial Sample App | About Us")
    #end
  end

  describe "Contact page" do
	before { visit contact_path }
	
	it { should have_selector('h1', content: 'Contact') }
	it { should have_selector('title', content: title('Contact')) }
	
    #it "should have the h1 'Contact'" do
    #  visit contact_path
    #  page.should have_selector('h1', content: 'Contact')
    #end

    #it "should have the title 'Contact'" do
    #  visit contact_path
    #  page.should have_selector('title',
    #                content: "Ruby on Rails Tutorial Sample App | Contact")
    #end
  end

end
