hp = 20
enemy_hp = 20 

damage = [1,3,5,]
enemy_damage = [2,4]

potion_amount = 2

puts ("A goblin challenges you to a fight")
puts ("   ")

while  enemy_hp.to_i > 1
	
	puts ("   ")

	puts ("What will you do?")
	
	puts ("   ")
	
	puts ("fight")
	puts ("item")
	puts ("run")
	
	puts ("   ")
	
	action = gets
	if action.include?("fight")
		damage_taken = enemy_damage.sample
			
			puts ("You got hit for " + damage_taken.to_s + "damage!" )
			
			hp = hp.to_i - damage_taken.to_i
			
			puts ("Your HP is now " + hp.to_s)
		
		damage_given = damage.sample
			
			puts ("You attack for " + damage_given.to_s + "damage!" )
			
			enemy_hp = enemy_hp.to_i - damage_given.to_i
			
			puts ("The goblin now has " + enemy_hp.to_s + " life!")

	elsif action.include?("item")
		if potion_amount > 0

			potion_amount = potion_amount.to_i - 1
			
			hp = hp.to_i + 5
			
			puts ("You heal for 5!")
			puts ("Your HP is now " + hp.to_s)

			puts (" ")
			puts ("You now have " + potion_amount.to_s + " potions!")
			puts (" ")

			damage_taken = enemy_damage.sample
			
			puts ("You got hit for " + damage_taken.to_s + "damage!" )
			
			hp = hp.to_i - damage_taken.to_i
			
			puts ("Your HP is now " + hp.to_s)
			
		else
			puts ("You are out of potions... ")
		end

	else
		puts ("you run...")
	end
end
puts ("You Win!")