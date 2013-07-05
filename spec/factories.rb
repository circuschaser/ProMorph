FactoryGirl.define do
	factory :user do
		name		"Rob Howard"
		email		"rob@circuschaser.com"
		password	"foobar"
		password_confirmation "foobar"
	end
end