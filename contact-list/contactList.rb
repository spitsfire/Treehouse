#create contact list array
contact_list = []

#method to ask the user different questions
def ask(question, kind="string")
	print question + " "
	answer = gets.chomp
	answer = answer.to_i if kind == "number"
	return answer
end

#method to create a new contact
def add_contact
	contact = {"name" => "", "phone_numbers" => []}
	contact["name"] = ask("What is the person's name?")
	answer = ""
	while answer != "n"
		answer = ask("Do you want to add a phone number? (y/n)")
		if answer == "y"
			phone = ask("Enter a phone number: ")
			contact["phone_numbers"].push(phone)
		end
	end
	return contact
end