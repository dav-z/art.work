Discipline.create([
  {id: 1, style: "Illustrating"},
  {id: 2, style: "Photography"},
  {id: 3, style: "Graphic Design"},
  {id: 4, style: "Advertising"},
  {id: 5, style: "Film/Video"},
  {id: 6, style: "Retouching"},
  {id: 7, style: "Video Editing"},
  {id: 8, style: "Web Design"},
  {id: 9, style: "3D Design"},
  {id: 10, style: "Mixed Media"}
])

User.create ([
	{id: 1, fname: "David", lname: "Zheng", location: "Brooklyn", bio: "This is a bio.", admin: true, propic: File.new("#{Rails.root}/app/assets/images/david.jpeg"), coverpic: File.new("#{Rails.root}/app/assets/images/home4.jpg"), password: "password", email: "david@zheng.com", username: "dav"},
  {id: 2, fname: "Jenn", lname: "Macquade", location: "Brooklyn", bio: "A BIO!", admin: false, propic: File.new("#{Rails.root}/app/assets/images/jenn.jpg"), propic: File.new("#{Rails.root}/app/assets/images/home2.jpg"), password: "password", email: "jenn@macquade.com", username: "jenn"}
])

UserDiscipline.create ([
	{discipline_id: 2, user_id: 1},
	{discipline_id: 3, user_id: 1},
  {discipline_id: 8, user_id: 1},
  {discipline_id: 2, user_id: 2},
  {discipline_id: 3, user_id: 2},
  {discipline_id: 1, user_id: 2},
  {discipline_id: 4, user_id: 2},
  {discipline_id: 6, user_id: 2},
  {discipline_id: 8, user_id: 2}
])

Post.create ([
	{id: 1, user_id: 1, photo: File.new("#{Rails.root}/app/assets/images/dav2.png"), caption: "This is what I'm working on."}
	])

Art.create ([
	{id: 1, user_id: 1, title: "Urban Gardener", image: File.new("#{Rails.root}/app/assets/images/dav1.png")},
  {id: 2, user_id: 1, title: "Car", image: File.new("#{Rails.root}/app/assets/images/home1.jpg")},
  {id: 3, user_id: 1, title: "Rocks", image: File.new("#{Rails.root}/app/assets/images/home2.jpg")},
  {id: 4, user_id: 1, title: "Steph", image: File.new("#{Rails.root}/app/assets/images/home3.jpg")},
  {id: 5, user_id: 1, title: "Carnival Truck", image: File.new("#{Rails.root}/app/assets/images/home4.jpg")},
  {id: 6, user_id: 1, title: "Urban Gardener Logo", image: File.new("#{Rails.root}/app/assets/images/dav2.png")},
	])

Job.create ([
{id:1, user_id: 1, title: "Cool Job Post!", description: "WOW CHECK THIS OUT!"}
  ])
