def play()
	system("clear")	
	print "Digite seu nickname:"
	nick_name = gets.chomp
	puts ""
	print "Digite a quantidade de rounds para jogar:"
	quantity_of_rounds = gets.chomp.to_i
	
	player = Player.new(nick_name, 0)
	
	computer = Player.new("Computador", 0)
	
	chooses = ['Pedra', 'Papel', 'Tesoura']
	player_choose = ''
	computer_choose = ''
	count = 0
	
	while(count < quantity_of_rounds)
	
		count += 1
		system("clear")
		puts "******************"
		puts "*     Round #{count}    *"
		puts "******************"
		puts "Quando estiver pronto para começar tecle enter..."
		gets.chomp
		system("clear")
		puts "==============="
		puts "| 0 - Pedra   |"
		puts "| 1 - Papel   |"
		puts "| 2 - Tesoura |" 
		puts "==============="  
		print "Escolha uma opção:"
		player_choose = gets.chomp.to_i
		computer_choose = rand(0..2)
		
		system("clear")
		sleep(1)
		print "JO! "
		sleep(1)
		print "KEN! "
		sleep(1)
		print "PO!"
		
		puts ""
		puts ""
		
		puts"#{player.get_name} escolheu #{chooses[player_choose]}"
		puts"#{computer.get_name} escolheu #{chooses[computer_choose]}"
		
		sleep(3)
		
		if(player_choose == computer_choose)
		
			
			puts "Temos um empate!"
			
			sleep(5)
			
		elsif(player_choose == 0 and computer_choose == 1)
			puts "Vitória do computador"
			computer.set_score(1)
			sleep(5)
		
		elsif(player_choose == 0 and computer_choose == 2)
			puts "Vitoria de #{player.get_name}"
			player.set_score(1)
			sleep(5)
		
		elsif(player_choose == 1 and computer_choose == 0)
			puts "Vitoria de #{player.get_name}"
			player.set_score(1)
			sleep(5)
		
		elsif(player_choose == 1 and computer_choose == 2)
			puts "Vitória do computador"
			computer.set_score(1)
			sleep(5)
		
		elsif(player_choose == 2 and computer_choose == 0)
			puts "Vitória do computador"
			computer.set_score(1)
			sleep(5)
		
		elsif(player_choose == 2 and computer_choose == 1)
			puts "Vitoria de #{player.get_name}"
			player.set_score(1)
			sleep(5)
		else
			puts "Opcão invalida, penalidade de 1 ponto"
			computer.set_score(1)
			sleep(5)
		end
		
	end
	
	puts""
	puts"=========================="
	puts"Score Final:"
	puts"=========================="
	
	puts "#{player.get_name} - #{player.get_score} X Computador - #{computer.get_score}"
	puts "Tecle enter para avançar >>"
	puts""
	
	gets.chomp
	
	system ("clear")
	
	
	if(player.get_score > computer.get_score)
		puts "Parabéns #{player.name} você venceu a disputa!!!!!"
		sleep(5)
		puts "Aguarde, em poucos segundos você voltara para o menu!"
		sleep(8)
		main_menu
	elsif(player.get_score < computer.get_score)
		puts "Game Over!"
		sleep(4)
		main_menu
	else
		puts "Poxa vida, empate geral!!"
		sleep(5)
		puts "Aguarde, em poucos segundos você voltara para o menu!"
		sleep(8)
	end
end
