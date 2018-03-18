3.times do |x|
  language = Faker::SiliconValley.company
  Topic.create!(
    title: "#{language}"
  )
  puts "Topic #{language} created"
end

9.times do |x|
 Blog.create!(
  title: "#{Faker::SiliconValley.company}",
  body: "#{Faker::SiliconValley.motto}",
  topic_id: Topic.last.id
  )
end

6.times do |x|
  Portfolio.create!(
  title: "#{Faker::SiliconValley.app}",
  subtitle: "#{Faker::SiliconValley.invention}",
  body: "#{Faker::SiliconValley.quote}",
  main_image: "http://via.placeholder.com/600x600",
  thumb_image: "http://via.placeholder.com/300x300"
  )
end

10.times do |x|
  Skill.create!(
    title: "#{Faker::ProgrammingLanguage.name}",
    percent_utilized: 100
  )
end

3.times do |x|
  Portfolio.last.technologies.create!(
    name: "#{Faker::SiliconValley.invention}"
  )
end
