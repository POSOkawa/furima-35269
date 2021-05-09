FactoryBot.define do

  factory :user do
    nickname              {"text"}
    email                 {"text@gmail.com"}
    password              {"00000a"}
    encrypted_password    {"00000a"}
    namef           {"漢字"}
    name      {"太郎"}
    kanaf            {"カンジ"}
    kana       {"タロウ"}
    birthd             {"1930-03-03"}
  end
end