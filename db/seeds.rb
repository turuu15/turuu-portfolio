
3.times do |topic|

	Topic.create!(
		title: "My awesome topic #{topic}"
	)
end
puts "3 topic been created"

10.times do |blog|

	Blog.create!(
		title: "My great title #{blog}",
		body: "Lorem ipsum dolor sit amet,
		 consectetuer adipiscing elit. Aenean
		 commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenat",
		topic_id: Topic.last.id	
	)
end
puts "10 blog has been created"

5.times do |i|
	Skill.create!(
		title: "Rails #{i}",
		percent_utilized: 75
	)
end
puts "5 skills have been created"

7.times do |i|
	Portfolio.create!(
		title: "Portfolio title #{i}",
		subtitle: "Ruby on rails",
		body: "Lorem ipsum dolor sit amet,
		 consectetuer adipiscing elit. Aenean
		 commodo ligula eget dolor. Aenean
		 massa. Cum sociis natoque penatibus
		 et magnis dis parturient montes,
		 nascetur ridiculus mus. Donec quam
		 felis, ultricies nec, pellentesque eu",
      	main_image:"http://placehold.it/600x300",
      	thum_image: "http://placehold.it/350x200"
	)
end

2.times do |i|
	Portfolio.create!(
		title: "Portfolio title #{i}",
		subtitle: "Angular",
		body: "Lorem ipsum dolor sit amet,
		 consectetuer adipiscing elit. Aenean
		 commodo ligula eget dolor. Aenean
		 massa. Cum sociis natoque penatibus
		 et magnis dis parturient montes,
		 nascetur ridiculus mus. Donec quam
		 felis, ultricies nec, pellentesque eu",
      	main_image:"http://placehold.it/600x300",
      	thum_image: "http://placehold.it/350x200"
	)
end
puts "9 portfolio have been created"
