class Ordenacao

	attr_reader :numeros

	def initialize(numeros)
		@numeros = numeros
	end

	def busca_posicao_menor(posicao) 
		menor = @numeros[posicao]
		posicao_do_menor = posicao

		for i in posicao..@numeros.length - 1
			if @numeros[i] < menor
				menor = @numeros[i]
				posicao_do_menor = i
			end
		end

		posicao_do_menor
	end

	def selection_sort() 
		for i in 0..@numeros.length - 1
			posicao_do_menor = busca_posicao_menor i

			numero_atual = @numeros[i]
			numero_menor = @numeros[posicao_do_menor]

			@numeros[i] = numero_menor
			@numeros[posicao_do_menor] = numero_atual
		end
	end

	def bubble_sort()
		for i in 0..@numeros.length - 1
			for j in i + 1..@numeros.length - 1
				if @numeros[j] < @numeros[i]
					aux = @numeros[j]
					@numeros[j] = @numeros[i]
					@numeros[i] = aux 
				end
			end
		end
	end

end

ordenacao = Ordenacao.new([60, 15, 180, 0, 3, 2, 10, -4])
ordenacao.selection_sort()

puts "Números: #{ordenacao.numeros}"	
