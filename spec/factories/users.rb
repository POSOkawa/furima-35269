FactoryBot.define do

  factory :user do
    nickname              {"text"}
    email                 {Faker::Internet.free_email}
    password              {"00000a"}
    password_confirmation    {"00000a"}
    namef           {"漢字"}
    name      {"太郎"}
    kanaf            {"カンジ"}
    kana       {"タロウ"}
    birthd             {"1930-03-03"}
  end
end