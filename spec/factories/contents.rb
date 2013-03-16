# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content do
    name "MyString"
    description "MyString"
    filename "MyString"
    url "MyString"
    language "MyString"
    public false
  end
end
