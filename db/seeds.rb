Klass.create( { name:"JavaScript", description:"...", appointment:DateTime.strptime("05/22/2016 8:00", "%m/%d/%Y %H:%M") , duration:10, user_id:1  })
Klass.create( { name:"React on Rails", description:"...", appointment:DateTime.strptime("05/28/2016 8:00", "%m/%d/%Y %H:%M") , duration:10, user_id:1  })
Klass.create( { name:"Temperature and volatility", description:"...", appointment:DateTime.strptime("05/26/2016 8:00", "%m/%d/%Y %H:%M") , duration:10, user_id:2  })
Klass.create( { name:"Keynes and the Future", description:"...", appointment:DateTime.strptime("05/27/2009 8:00", "%m/%d/%Y %H:%M") , duration:10, user_id:3  })
Klass.create( { name:"Shakespeare in 2016", description:"...", appointment:DateTime.strptime("05/29/2009 8:00", "%m/%d/%Y %H:%M") , duration:10, user_id:4  })


Subject.create({ name:"Mathematics" })
Subject.create({ name:"Science" })
Subject.create({ name:"Economics" })
Subject.create({ name:"English" })
Subject.create({ name:"Coding" })


Topic.create({ title: "Linear Regression", description:"", subject_id:1, user_id:1 })
Topic.create({ title: "Calculus", description:"", subject_id:1, user_id:1 })
Topic.create({ title: "Molecules", description:"", subject_id:2, user_id:2 })
Topic.create({ title: "Practical Session", description:"", subject_id:2, user_id:2 })
Topic.create({ title: "Keynes", description:"", subject_id:3, user_id:3 })
Topic.create({ title: "Shakespeare", description:"", subject_id:4, user_id:4 })
Topic.create({ title: "React on Rails", description:"", subject_id:5, user_id:3 })
Topic.create({ title: "JavaScript", description:"", subject_id:5, user_id:1 })


User.create({ name:"Michaelus", last_name:"Farr", city:"Amsterdam", postalcode:"1092VC", email:"michfarr@gmail.com", password:"michfarr", password_confirmation:"michfarr"})
User.create({ name:"Laurentius", last_name:"Weening", city:"Amstelveen", postalcode:"1121AB", email:"laurentius@gmail.com", password:"laurenceweening", password_confirmation:"laurenceweening"})
User.create({ name:"Brian", last_name:"Lens", city:"Amsterdam", postalcode:"1092VC", email:"brian@stutor.nl", password:"brianlens", password_confirmation:"brianlens"})
