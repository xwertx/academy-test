user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
City.create(cities_name: 'London', short_name: 'Ld')
City.create(cities_name: 'Berlin', short_name: 'Br')
City.create(cities_name: 'Cracow', short_name: 'Cr')
City.create(cities_name: 'Moscov', short_name: 'Ms')