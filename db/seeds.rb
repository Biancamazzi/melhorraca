# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

  Quiz.all.destroy_all
  Question.all.destroy_all
  Quiz.create(user_id: 1, description: "Quiz 1")
  # Create - Questions
  Question.create(
  quiz_id: Quiz.first, description: "Você pode tosar e/ou escovar o seu cachorro com frequência?", photourl: "https://images.unsplash.com/photo-1527526029430-319f10814151?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80")
  # true == >= 5 (grooming_frequency_value)
  Question.create(
  quiz_id: Quiz.first, description: "Troca de pêlo frequente te incomoda?", photourl: "https://photos.smugmug.com/photos/i-QKBF4L6/0/4K/i-QKBF4L6-4K.jpg")
  # true == <= 4 (shedding_value)
  Question.create(
   quiz_id: Quiz.first, description: "Você tem tempo disponível para brincar e passear com seu novo amigo?", photourl: "https://images.unsplash.com/photo-1525253086316-d0c936c814f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80" )
  # true == >= 5 (energy_level_value)
  Question.create(
  quiz_id: Quiz.first, description: "Facilidade para treinamento é algo muito relevante pra você?", photourl: "https://images.unsplash.com/photo-1508109742312-c7d531211d11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
  # true == >= (trainability_value)
  Question.create(
  quiz_id: Quiz.first,  description: "É muito importante pra você que o cachorro se adapte bem com outros cachorros e pessoas fora do círculo familar?", photourl: "https://images.pexels.com/photos/4588015/pexels-photo-4588015.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
  # true == >= 5 (demeanor_value)
  Question.create(
  quiz_id: Quiz.first,  description: "Você gostaria de ter uma raça de pequena?", photourl:"https://i.postimg.cc/TP3RpwKg/jack.jpg" )
  # true == size == pequeno)
  Question.create(
  quiz_id: Quiz.first,  description: "E uma raça média?", photourl:"https://photos.smugmug.com/photos/i-FQVNFKF/0/4K/i-FQVNFKF-4K.jpg" )
  # true == size == medio
  Question.create(
  quiz_id: Quiz.first,  description: "Aceitaria também uma raça grande?", photourl:"https://i.postimg.cc/P52HsjSx/raca-grande.jpg" )
  # true == size == grande

  # seed with CSV file for info mode

 require 'csv'
  CSV.foreach('lib/seeds/infodotnew2csv.csv', headers: true, encoding: "UTF-8", col_sep: ';') do |row|
  Info.create(
    dog_name: row['dog_name'],
    dog_description: row['dog_description'],
    photo_url: row['photo_url'],
    grooming_frequency_value: row['grooming_frequency_value'],
    shedding_value: row['shedding_value'],
    energy_level_value: row['energy_level_value'],
    trainability_value: row['trainability_value'],
    demeanor_value: row['demeanor_value'],
    size: row['size'],
    kennel_name: row['kennel_name'],
    kennel_owner: row['kennel_owner'],
  )
end

# //////////////////////////////////
# removido o id do  Quiz.first.id
