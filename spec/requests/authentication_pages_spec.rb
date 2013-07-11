require 'spec_helper' 

describe "Authentication" do

	subject { page }
	
	# sign in page
	describe "signin page" do
		before { visit signin_path }

		it { should have_selector('h3', 		text: 'Please Sign in') }
		it { should have_selector('title', 	text: 'SIGN IN') }
		it { should_not have_link('Sign out', href: signout_path) }

	end

	# sign in action
	describe "signin" do
		before { visit signin_path }

		describe "with invalid information" do
			before { click_button "SIGN IN" }

			it { should have_selector("title", text: "SIGN IN") }
			it { should have_selector("div.alert.alert-error", text: "exist") }

			describe "after visiting another page" do
				before { click_link "SIGN UP IMMEDIATELY" }
				it { should_not have_selector("div.alert.alert-error") }
			end
		end

		describe "with valid information" do
			let(:user) { FactoryGirl.create(:user) }
			before { sign_in user }
			
			# it { should have_selector('title', text: user.name) }
			# it { should have_link('My Account', href: user_path(user)) }
			it { should have_link('Sign out', href: signout_path) }
			it { should have_link('Settings', href: edit_user_path(user)) }
			it { should_not have_link('SIGN IN', href: signin_path) }


			describe "followed by signout" do
				before { click_link "Sign out" }
				it { should have_link('SIGN IN') }
			end	
		end
	end

	# authorization
	describe "authorization" do

		describe "for non-signed-in users" do
			let(:user) { FactoryGirl.create(:user) }

			describe "in the Users controller" do

				describe "visiting the edit page" do
					before { visit edit_user_path(user) }
					it { should have_selector('title', text: 'SIGN IN') }
				end

				describe "submitting to the update action" do
					before { put user_path(user) }
					specify { response.should redirect_to(signin_path) }
				end
			end
		end
	end

end