def processar_palavra(palavra)
    tam = palavra.length
    tam_metade = tam / 2
  
    # Primeira passada: move caracteres minúsculos e maiúsculos 3 posições
    palavra = palavra.chars.map do |char|
      if ('A'..'Z').include?(char) || ('a'..'z').include?(char)
        (char.ord + 3).chr
      else
        char
      end
    end
  
    # Segunda passada: inverte a string
    palavra = palavra.reverse
  
    # Terceira passada: modifica caracteres da metade em diante em uma posição
    (tam_metade...tam).each do |i|
      palavra[i] = (palavra[i].ord - 1).chr
    end
  
    palavra.join
  end
  
  # Leitura do número de casos
  casos = gets.to_i
  
  while casos > 0
    palavra = gets.chomp  # Leitura da string a ser processada
  
    palavra_processada = processar_palavra(palavra)
    puts palavra_processada  # Exibir a palavra criptografada
  
    casos -= 1
  end
  