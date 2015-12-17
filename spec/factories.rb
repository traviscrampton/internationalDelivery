FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    password 'dapassword'
    firstname "Travis"
    lastname "Crampton"
    phonenumber "2813308004"
    streetaddress "1431 Raspberry Ave"
    country "United States"
    territory "California"
    zipcode "93433"
  end

  factory :request do
    daystart "12"
    monthstart "Feburary"
    yearstart "2015"
    dayend "15"
    monthend "Feburary"
    yearend "2015"
    deal false
  end

end
