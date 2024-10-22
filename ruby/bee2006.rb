# Getting the correct answer
correct_tea = gets.to_i

# Getting the answers of the participants
answers = gets.split.map(&:to_i)

#Explicacao para este trecho -> answers = gets.split.map(&:to_i)

#O método split aplicado a uma string quebra essa string em uma lista de substrings, separando os elementos pelos espaços em branco (ou outro separador, se especificado). Por padrão, o split usa os espaços em branco como delimitador.

#O método map é utilizado para aplicar uma transformação a cada elemento de uma lista. Nesse caso, &:to_i é uma forma simplificada de passar o método to_i (que converte strings em números inteiros) como um bloco para o map. Ou seja, map(&:to_i) vai converter cada string na lista em um número inteiro.

#Counting the correct answers
success = answers.count(correct_tea)

puts success

