class Question
  def initialize
    @n1 = rand(1..20)
    @n2 = rand(1..20)
  end

  def prompt_user
    puts "what is #{@n1} + #{@n2}?"
    answer = gets.chomp
    return answer
  end

  def validate guess
    if guess.to_i == @n1 + @n2
      puts "You are correct. Good job you get a star."
      true
    else
      puts "Dummy!"
      false
    end
  end

end
