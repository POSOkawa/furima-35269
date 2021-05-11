FactoryBot.define do

  factory :furima do
    name              {"supreme"}
    price             {10000}
    setumei       {"aaa"}
    basyo_id {1}
   category_id {1}
  futan_id {1}
   hassou_id {1}
   jyoutai_id {1}
   association :user

   after(:build) do |furima|
    furima.image.attach(io: File.open('app/image/test.jpg'), filename: 'test.jpg')
  end
  end

end