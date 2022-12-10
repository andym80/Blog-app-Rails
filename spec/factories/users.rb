FactoryBot.define do
	100.times do |i|
	  factory :user, class: "User" do
		login "test001"
		uid i
	  end
	end
  end