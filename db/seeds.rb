10.times do |n|
  User.create(
    username: "テスター#{n}",
    email: "test#{n}@example.com",
    password: "password#{n}"
  )
end
