FactoryBot.define do

  #user = User.new(nickname: 'test', email: 'test@example', password: '00000a', password_confirmation: '00000a', name: ' 漢字', kana: 'アア', birthd: '1930-03-03')
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