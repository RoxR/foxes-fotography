Genre.genres.each do |genre|
  Genre.create(name: genre)
end

100.times do |gender|
  Model.create(
    name: Faker::Name.unique.name,
    gender: Model.genders.keys.sample,
    height: Model.heights.sample,
    weight: Model.weights.sample,
    bust: Model.busts.sample,
    waist: Model.waists.sample,
    hips: Model.hips.sample,
    shoe: Model.shoes.sample,
    hair_color: Model.hair_colors.sample,
    hair_length: Model.hair_lengths.sample,
    eye_color: Model.eye_colors.sample,
    ethnicity: Model.ethnicities.sample,
    skin_color: Model.skin_colors.sample,
    nudes: Model.nudes.sample,
    tattoos: Model.tattoos.sample,
    piercings: Model.piercings.sample,
    experience: Model.experience.sample,
    compensation: Model.compensation.sample,
    country: Model.countries.sample,
    genres: Genre.all.sample((2..5).to_a.sample)
  )
end