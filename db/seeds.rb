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
  {id: 2, fname: "Jenn", lname: "Macquade", location: "Brooklyn", bio: "A BIO!", admin: false, propic: File.new("#{Rails.root}/app/assets/images/jenn.jpg"), coverpic: File.new("#{Rails.root}/app/assets/images/home2.jpg"), password: "password", email: "jenn@macquade.com", username: "jenn"},
  {id: 3, fname: "Arielle", lname: "Zoeller", location: "Brooklyn", bio: "My name is Arielle Zoeller and I am a Graphic Designer based in Brooklyn, NY.

  I have a B.F.A. in Communication Design with a concentration in Graphic Design from Pratt Institute, and I am currently working at Clarke Design in New York City, NY as a Junior Designer.", admin: false, propic: File.new("#{Rails.root}/app/assets/images/arielle.jpg"), coverpic: File.new("#{Rails.root}/app/assets/images/aricov.jpg"), password: "password", email: "arielle@zoeller.com", username: "arielle"},
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
  {discipline_id: 8, user_id: 2},
  {discipline_id: 1, user_id: 3},
  {discipline_id: 3, user_id: 3},
  {discipline_id: 4, user_id: 3},
  {discipline_id: 10, user_id: 3}
])

Post.create ([
	{id: 1, user_id: 1, photo: File.new("#{Rails.root}/app/assets/images/dav2.png"), caption: "This is what I'm working on."},
  {id: 2, user_id: 3, photo: File.new("#{Rails.root}/app/assets/images/bqe.jpg"), caption: "A new magazine I'm working on! More to come!"}
	])

Art.create ([
	{id: 1, user_id: 1, title: "Urban Gardener", image: File.new("#{Rails.root}/app/assets/images/dav1.png")},
  {id: 2, user_id: 1, title: "Car", image: File.new("#{Rails.root}/app/assets/images/home1.jpg")},
  {id: 3, user_id: 1, title: "Rocks", image: File.new("#{Rails.root}/app/assets/images/home2.jpg")},
  {id: 4, user_id: 1, title: "Steph", image: File.new("#{Rails.root}/app/assets/images/home3.jpg")},
  {id: 5, user_id: 1, title: "Carnival Truck", image: File.new("#{Rails.root}/app/assets/images/home4.jpg")},
  {id: 6, user_id: 3, title: "Fold Bind", image: File.new("#{Rails.root}/app/assets/images/foldbind.jpg")},
  {id: 7, user_id: 3, title: "A Guide To Sustainable Paper", image: File.new("#{Rails.root}/app/assets/images/guidetopaper.jpg")},
  {id: 8, user_id: 3, title: "Jackson Gin", image: File.new("#{Rails.root}/app/assets/images/jacksongin.jpg")},
  {id: 9, user_id: 3, title: "Rock Candy", image: File.new("#{Rails.root}/app/assets/images/rockcandy.jpg")},
  {id: 10, user_id: 3, title: "BQE Magazine", image: File.new("#{Rails.root}/app/assets/images/bqe2.jpg")},
  {id: 11, user_id: 3, title: "Too Pool For You", image: File.new("#{Rails.root}/app/assets/images/toopool.jpg")}
	])

Job.create ([
  {id:1, user_id: 1, title: "Graphic Designer Wanted!", description: "WOW CHECK THIS OUT! They are looking for a graphic designer to design a logo for their company. Contact: contact@company.com"}
  ])
