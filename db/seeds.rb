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
	{id: 1, fname: "David", lname: "Zheng", location: "Brooklyn", bio: "This is a bio.", admin: true, propic: File.new("#{Rails.root}/app/assets/images/david.jpeg"), password: "password", email: "david@zheng.com", username: "dav"},
  {id: 2, fname: "Jenn", lname: "Macquade", location: "Brooklyn", bio: "A BIO!", admin: false, propic: File.new("#{Rails.root}/app/assets/images/jenn.jpg"), password: "password", email: "jenn@macquade.com", username: "jenn"}
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
	{id: 1, user_id: 2, title: "Urban Gardener", image: File.new("#{Rails.root}/app/assets/images/dav1.png")}
	])

Job.create ([
{id:1, user_id: 1, title: "Cool Job Post!", description: "WOW CHECK THIS OUT!"}
  ])
