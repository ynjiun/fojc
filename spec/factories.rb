FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email){ |n| "person_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"
    
    factory :admin do
      admin true
    end
  end  
  
  factory :micropost do
    content "Lorem ipsum"
    user
  end
  
  factory :verse do
    verse "Rom 10:10"
    chinese "Chinese Verse Here!"
    schinese "Simplified Chinese Verse Here!"
    english "English Verse Here!"
  end
  
end