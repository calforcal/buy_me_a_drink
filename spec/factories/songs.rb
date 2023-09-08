FactoryBot.define do
  factory :song do
    title { Faker::Music::Prince.song }
    album { Faker::Music.album }
    lyrics { Faker::Quote.yoda }
    drink { Faker::Beer.name }
    status { [1,2,3].sample }
  end
end