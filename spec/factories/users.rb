FactoryBot.define do
  factory :user do
    first_name "Artie"
    last_name "Choke"
    email 'artie@choke.com'
  end

  factory :invalid_user, class: User do
    first_name nil
    last_name nil
    email nil
  end
end
