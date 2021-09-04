georgia = User.create(name: 'Georgia')
ozzy = User.create(name: 'Ozzy')
ted = User.create(name: 'Ted')

Entry.create(name: "golden road", location: "dtla", beers: 'mango cart', notes: "nice fruit beers", user: georgia)
Entry.create(name: "brouwerij west", location: "san pedro", beers: 'picnic lightning', notes: "amazing hazy beers", user: ozzy)
Entry.create(name: "shiner", location: "shiner, tx", beers: 'shiner bock', notes: "classic brew", user: ted)

