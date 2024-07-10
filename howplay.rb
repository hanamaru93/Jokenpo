def how_play()
	system("clear")
	puts "============="
	puts "|Como jogar?|"
	puts "============="
	puts ""
	puts "- No menu principal digite o número 1 e tecle enter"
	puts "- Você devera escolher um numero entre 0 e 2"
	puts "- O numero 0 representa a Pedra"
	puts "- O numero 1 representa o Papel"
	puts "- O numero 2 representa a Tesoura"
	puts "===================================================="
	puts "<< Tecle enter para voltar para o menu principal..."
	gets.chomp
	
	main_menu
end
