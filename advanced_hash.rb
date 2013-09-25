require 'pry'
#Lets check out some more advanced uses of hashes

# we can actually have a hash as a hash value!

person = {
	name: {
		first: 'Bob',
		last: 'Smith'
	},
	pets: {
		dog: 'Charlie',
		cat: 'Pepper',
		goldfish: '2chainz'
	},
	age: 24,
	married: true,
}

# if we wanted to access this person's first name, how might we do so?


# we can even have arrays as hash values!

amir = {
	name: {
		first: 'Amir',
		last: 'Jacobs'
	},
	grades: [92, 82, 91, 96, 85, 91],
	age: 19,
	family: {
		size: 6,
		members: ['Mike', 'Sarah', 'Siobhan']
	}
}

sally = {
	name: {
		first: 'Sally',
		last: 'Smith'
	},
	grades: [95, 81, 92, 90, 81, 93],
	age: 28,
	family: {
		size: 3,
		members: ['Mike', 'Sarah', 'Siobhan']
	}
}

students = [amir, sally]

def get_grades(students)
	all_grades = []
	students.each do |student|
		all_grades << student[:grades]
	end
	return all_grades.flatten.sort!
end

def avg(numbers)
	sum = 0
	numbers.each do |number|
	 sum += number.to_f
	end
	sum/numbers.length
end

total_grades = get_grades(students)
average = avg(total_grades)
binding.pry

#how would we get the student's third grade?

#how would we get the second member of this person's family?
