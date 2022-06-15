user1 = User.create(
  username: "テストユーザー1", email: "test1@example.com", password: "passwordA", profile_image: File.open("icon1.jpg"));
  Shop.create(title: "テストショップ1", body: "肉汁たっぷりハンバーグです", image: File.open("shop1.jpg"),user_id:user1.id)

user2 = User.create(
  username: "テストユーザー2", email: "test2@example.com", password: "passwordB", profile_image: File.open("/icon2.jpg"));
  Shop.create(title: "テストショップ2", body: "ふわふわオムレツのパスタです", image: File.open("shop2.jpg"),user_id:user2.id)

user3 = User.create(
  username: "テストユーザー3", email: "test3@example.com", password: "passwordC", profile_image: File.open("icon3.jpg"));
  Shop.create(title: "テストショップ3", body: "これは美味しいステーキです", image: File.open(".shop3.jpg"),user_id:user3.id)
