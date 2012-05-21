require 'spec_helper'

describe "UserPages" do
  subject { page }
  
  describe "signup page" do
    before { visit signup_path }
  
    it { should have_selector('h1', content: 'Sign up') }
    it { should have_selector('title', content: title('Sign up')) }
  end
end