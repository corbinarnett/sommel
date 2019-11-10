# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Producer.create([
  
  { name: 'Beaux Frères', location: 'Newberg, OR' }, { name: 'Bergström Wines', location: 'Newberg, OR' },
  { name: 'Cooper Mountain Vineyard', location: 'Beaverton, OR' }, { name: 'Keeler Estate Vineyard', location: 'Amity, OR' },
  { name: 'Ponzi Winery', location: 'Sherwood, OR' }, { name: 'Maysara Winery', location: 'McMinnville, OR'},
  { name: 'Winderlea', location: 'Dundee, OR' }, { name: 'Troon', location: 'Grants Pass, OR' },
  { name: 'Soléna Estate', location: 'Yamhill, OR' }, { name: 'Youngberg Hill', location: 'McMinnville, OR ' },
  
  ])


Wine.create([
  { name: 'Abbot Claim Pinot Noir', vintage: 2017 , producer_id: 1 }, { name: 'Star Mooring Pinot Noir', vintage: 2017 , producer_id: 1 },
  { name: 'Le pre du col Pinot Noir', vintage: 2017 , producer_id: 2 }, { name: 'Temperance Hill', vintage: 2017 , producer_id: 2 },
  { name: 'Pinot Noir Rosé', vintage: 2018 , producer_id: 3 }, { name: 'Gamay Noir', vintage: 2018 , producer_id: 3 },
  { name: 'Skin Contact Pinot Gris', vintage: 2018 , producer_id: 4 }, { name: 'Blanc De Noir', vintage: 2018 , producer_id: 4 },
  { name: 'Brut Rosé', vintage: 2015 , producer_id: 5 }, { name: 'Blanc De Blancs', vintage: 2015 , producer_id: 5 },
  { name: 'Asha Pinot Noir', vintage: 2014 , producer_id: 6 }, { name: 'Jamsheed Pinot Noir', vintage: 2014 , producer_id: 6 },
  { name: 'Bryan Creek Vineyard Pinot noir', vintage: 2016 , producer_id: 7 }, { name: 'Weber Vineyard Pinot noir', vintage: 2016 , producer_id: 7 },
  { name: 'Estate Vermentino, Kubli Bench', vintage: 2017 , producer_id: 8 }, { name: 'Vermentino, Orange Wine, Kubli Bench', vintage: 2017 , producer_id: 8 },
  { name: 'Domaine Danielle Laurent Chardonnay', vintage: 2017 , producer_id: 9 }, { name: 'Hyland Vineyard Pinot Noir', vintage: 2016 , producer_id: 9 },
  { name: 'Cuvée Pinot Noir', vintage: 2016 , producer_id: 10 }, { name: 'Syrah', vintage: 2015 , producer_id: 10 },
  
  ])

