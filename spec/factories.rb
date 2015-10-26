FactoryGirl.define do
  factory(:user) do
    firstname('Travis')
    lastname('Crampton')
    phonenumber('(281) 330-8004')
    streetaddress('4424 SE Stark')
    country('USA')
    territory('Oregon')
    zipcode('97215')
    email('crampton.travis@gmail.com')
    password('Travis12')
    passwordconfirmation('Travis12')
  end
end
