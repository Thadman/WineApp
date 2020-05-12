def listing 
[
  {
    name: 'Penfolds',
    vintage: '2016',
    region: 'Koonunga Hill',
    grape: 'Cabernet Sauvignon',
    notes: 'The wine is good ',
    description: 'Autumn and winter were dry and cool across South Australia. Record low rainfall prevailed through September to March, with some relief seen only in January and February ',
    alcohol: '14.5%', 
    size: '750ml', 
    wine_type: 'Red',
    price: 19,
    user_id: 1
  },

  {
    name: 'Domaine Des Grosses Pierres',
    vintage: '2018',
    region: 'Sancerre',
    grape: 'Sauvignon Blanc',
    notes: 'The wine is tasty',
    description: 'Autumn and winter were dry and cool across South Australia. Record low rainfall prevailed through September to March, with some relief seen only in January and February ',
    alcohol: '13.0%', 
    size: '750ml', 
    wine_type: 'White',
    price: 36,
    user_id: 1
  },

  {
    name: 'Mumm',
    vintage: '2006',
    region: 'Champagne',
    grape: 'Blend',
    notes: 'The wine is tasty',
    description: 'Bright in colour with a luminous golden yellow colour. Fine and persistent bubbles. A nose revealing the beauty and great complexity of this wine with notes of apples and pears ',
    alcohol: '12.5%', 
    size: '750ml', 
    wine_type: 'Sparkling',
    price: 75,
    user_id: 1
  },

  {
    name: 'Mclaren Vale Grenache Rose',
    vintage: '2018',
    region: 'Margaret River',
    grape: 'Grenache',
    notes: 'The wine is tasty',
    description: '"100% grenache picked a little early. Light, bright magenta; totally delicious; very fruity, but bone dry',
    alcohol: '13.0%', 
    size: '750ml', 
    wine_type: 'Rose',
    price: 34,
    user_id: 2
  }, 

  {
    name: 'De Bortoli',
    vintage: '2017',
    region: 'Riverina',
    grape: 'Semillon',
    notes: 'The wine is tasty',
    description: 'It balances rich and luscious marmalade and apricot decadence with a crisp, almost refreshing acidity in its finish. Perfect partner to chocolate fudge mug cake.',
    alcohol: '9.5%', 
    size: '375ml', 
    wine_type: 'Dessert',
    price: 39,
    user_id: 2
  }
]
end

def grape_data 
  [
    {
      grape_type: "Malbec"
    },

    {
     grape_type: "Champagne" 
    },

    {
      grape_type: "Riesling"
    }
  ]
end



def wine_type

[
  {
    name: 'Red'
  },

  {
    name: 'White'
  },

  {
    name: 'Sparkling'
  },

  {
    name: 'Rose'
  },

  {
    name: 'Dessert'
  }
]

end