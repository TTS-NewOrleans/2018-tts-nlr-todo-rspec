FactoryBot.define do
  factory :homework, class: Task do
    name 'Complete homework'
    priority 1
  end

  factory :email, class: Task do
    name 'Reply to Uncle Chewies email'
    priority 2
  end

  factory :invalid_task, class: Task do
    name nil
    priority nil
  end
end
