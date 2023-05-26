# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



#confeccionamos un arreglo de hashes, para alimentar nuestra db
movies = [
  { name: 'Kikujiro no Natsu', synopsis: 'Masao, un niño de nueve años, pasa las vacaciones de verano con su abuela y decide buscar a su madre con la ayuda de Kikujiro, un antiguo yakuza.', director: 'Takeshi Kitano' },
  { name: 'L opération corned-beef', synopsis: 'Squale, un espía de élite, es llamado para desmantelar el tráfico internacional de armas dirigido por un importante funcionario del gobierno francés.', director: 'Jean-Marie Poiré' },
  { name: 'Tiburon', synopsis: 'Un enorme tiburón blanco devorador de hombres ataca a los bañistas en las playas de Amity Island.', director: 'Steven Spielberg' }
]

# Insertamos datos en nuestra base de datos
movies.each do |movie|
  Movie.create(movie)
end


series = [
  { name: 'Breaking Bad', synopsis: 'Profesor desahuciado, intenta dar un vuelvo a su situacion economica vendiendo sustancias ilicitas.', director: 'Vince Gilligan' },
  { name: 'La Casa de Papel', synopsis: 'Grupo de ciudadanos, planifican un gran robo.', director: 'Jesus Colmenar' },
  { name: 'TWD', synopsis: 'Sobrevivientes al apocalipsis zombie se las arreglan para mantenerse a salvo.', director: 'Gale Anne Hurd' }
]

# Insertamos datos en nuestra base de datos
series.each do |serie|
  Serie.create(serie)
end


documentals = [
  { name: 'La comida importa', synopsis: 'Investigación donde queda en evidencia que las personas se enferman debido a la desnutrición.', director: 'Robert Dworf' },
  { name: '¿Qué hay en nuestra comida?', synopsis: 'Análisis sobre el consumo del gluten y se dilucida si es necesario eliminarlo o no de la dieta.', director: 'feat. Novak Djokovic' },
  { name: 'Farmageddon', synopsis: 'Cómo las grandes empresas agrícolas ejercen presión.', director: 'Kristin Cantry' }
]

# Insertamos datos en nuestra base de datos
documentals.each do |documental|
  Documental.create(documental)
end