require 'spec_helper'

describe "Static pages" do
  subject { page }
  # test for the home page
  describe "Home page" do
    before { visit root_path }

    it { should have_content('Hartl App') }
    it { should_not have_title('| Home') }
    it { should have_title(full_title('')) }
  end

  # test for the help page
  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About Page" do 
  	before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end
  
  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

  describe "Signup Page" do
    before { visit signup_path }

    it { should have_content('Sign Up') }
    it { should have_title(full_title('Sign Up'))}
  end
end
