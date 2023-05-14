#este archivo de seeds o semia nos sirve para crear informacion por defecto en nuestra base de datos
#nos ayuda a crear informacion fiticia en nuestra base de datos
#crearemos un hotel y 25 habitaciones

require 'faker'

Hotel.create!(
    total_rooms: rand(50),
    address: Faker::Address.full_address,
    name: Faker::Restaurant.name
)
puts "Hotel creado"
=begin

Fuente: https://www.iteramos.com/pregunta/4872/comentarios-de-varias-lineas-en-ruby
25.times do 
    Room.create(
        length: rand(10),
        width: rand(10),
        taken: rand(2),
        image: "http://via.placeholder.com/700x400",
        description: Faker::Lorem.sentence(word_count: 100),
        hotel_id: Hotel.first.id
    )
end

puts "Habitaciones creadas"

=end

#para ejecutar el archivo de seeds, -> ejecutaremos el siguente comando rails db:setup