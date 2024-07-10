def main_menu()
	system("clear")
	File.open('ascii.txt', 'r') do |file|
		while line = file.gets
			puts line
		end
	end
	
	puts "  ======================= "
	puts " |Bem vindo ao JO-KEN-PO!|"
	puts "  ======================= "
	puts ""
	puts "1 - Iniciar o jogo"
	puts "2 - Como jogar?"
	puts "0 - Sair"
	print "Digite um numero referente a uma opção para continuar:"
	option = gets.chomp.to_i
	
	if(option == 1)
		play
	elsif(option == 2)
		how_play
	elsif(option == 0)
		system("clear")
		puts "Obrigado por jogar JO-KEN-PO!"
		sleep(3)
		system("clear")
	else
		system("clear")
		puts "Opção invalida!"
		sleep(4)
		main_menu
	end
end
