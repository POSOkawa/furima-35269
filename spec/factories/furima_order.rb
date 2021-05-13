FactoryBot.define do
  factory :furima_order do
    token {"tok_abcdefghijk00000000000000000"}
    yubin    {"123-0000"}
    basyo_id  {1}
    sityoson      {'横浜市'}
    banti     {'1-1-1'}
    tatemono  {'建物ビル'}
    phone   {'09022223333'} 
  end
end