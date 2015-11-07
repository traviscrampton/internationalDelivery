FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    password 'dapassword'
  end
end

FactoryGirl.define do 
  factory :request do
    daystart "12"
    monthstart "Feburary"
    yearstart "2015"
    dayend "15"
    monthend "Feburary"
    yearend "2015"
    fromcountry "United States"
    airport "Melbourne International Airport"
    deal false
  end
end
