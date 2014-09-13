require 'spec_helper'

describe "Static pages" do

  # test for the home page
  describe "Home page" do
    it "should have the content 'Hartl App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Hartl App')
    end
    it "should have the correct title" do
    	visit '/static_pages/home'
    	expect(page).not_to have_title('| Home')
    end
    it "should have the base title" do 
      visit '/static_pages/home'
      expect(page).to have_title('Hartl Testing App')
    end
  end

  # test for the help page
  describe "Help page" do

    it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('Help')
    end
    it "should have the correct title" do
    	visit '/static_pages/help'
    	expect(page).to have_title("Help")
    end
  end

  describe "About Page" do 
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end
    it "should have the correct title" do
    	visit '/static_pages/about'
    	expect(page).to have_title("About Us")
    end
  end
end
