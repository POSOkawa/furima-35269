FactoryBot.define do

  factory :furima do
    name              {"supreme"}
    price             {111}
    setumei       {"aaa"}
    basyo_id {1}
   category_id {1}
  futan_id {1}
   hassou_id {1}
   jyoutai_id {1}
   association :user
  end

end