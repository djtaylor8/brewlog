lou = User.create(name: 'Lou')
georgia = User.create(name: 'Georgia')
ozzy = User.create(name: 'Ozzy')
ted = User.create(name: 'Ted')

Entry.create(name: "highland park brewery", location: "1220 N Spring St, Los Angeles, CA", user: lou)
Entry.create(name: "macleods", location: "Van Nuys, CA", user: lou)
Entry.create(name: "paperback", location: "Glendale, CA", user: lou)
Entry.create(name: "golden road", location: "Los Angeles, CA", notes: "nice fruit beers", user: georgia)
Entry.create(name: "brouwerij west", location: "San Pedro, CA", notes: "amazing hazy beers", user: ozzy)
Entry.create(name: "shiner", location: "Shiner, TX", notes: "classic brew", user: ted)

