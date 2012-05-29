require 'spec_helper'

describe "UserPages" do
  subject { page }
  
  describe "signup page" do
    before { visit signup_path }
  
    it { should have_selector('h1', content: 'Sign up') }
    it { should have_selector('title', content: title('Sign up')) }
  end
  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it {should have_selector('h1', content: user.name) }
    it {should have_selector('title', content: user.name) }
  end
  
end


