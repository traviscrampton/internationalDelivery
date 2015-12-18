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
  factory :user2 do
    email 'jim@test.com'
    password 'dapassword'
    firstname "jim"
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
    done false
      after(:build) do |request|
        request.item ||= FactoryGirl.build(:item, :request => request)
        request.torequest ||= FactoryGirl.build(:torequest, :request => request)
        request.fromrequest ||= FactoryGirl.build(:fromrequest, :request => request)
      end
  end

  factory :item do
    itemname "dog"
    itemdescription "This is the best dog"
      after(:build) do |item|
        item.request ||= FactoryGirl.build(:request, :item => item)
      end
  end

factory :torequest do
  airport "San Francisco"
  latitude "37.7833"
  longitude "122.4167"
    after(:build) do |torequest|
      torequest.request ||= FactoryGirl.build(:request, :torequest => torequest)
    end
end
factory :fromrequest do
  airport "San Francisco"
  latitude "37.8136"
  longitude "144.9631"
    after(:build) do |fromrequest|
      fromrequest.request ||= FactoryGirl.build(:request, :fromrequest => fromrequest)
    end
end

factory :flight do
  day "12"
  month "Feburary"
  year "2015"
  description "My Flight Is A Good Time!"
  done false
    after(:build) do |flight|
      flight.toflight ||= FactoryGirl.build(:toflight, :flight => flight)
      flight.fromflight ||= FactoryGirl.build(:fromflight, :flight => flight)
    end
end

factory :toflight do
  airport "San Francisco"
  latitude "37.7833"
  longitude "122.4167"
    after(:build) do |toflight|
      toflight.flight ||= FactoryGirl.build(:flight, :toflight => toflight)
    end
end

factory :fromflight do
  airport "San Francisco"
  latitude "37.8136"
  longitude "144.9631"
    after(:build) do |fromflight|
      fromflight.flight ||= FactoryGirl.build(:flight, :fromflight => fromflight)
    end
end

end
