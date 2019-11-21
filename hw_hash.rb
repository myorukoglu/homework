class Question 
	def initialize(question, answer)
		@question = question
		@answer = answer
	end
	def ask_to_taker
		puts @question
	end
	
	def answer_correct?(answer)
		answer.chomp.downcase == @answer.downcase
	end
end

class Quiz 
	attr_reader :score
	
	def initialize(quiz_taker)
		@quiz_taker = quiz_taker
		@score = 0
		@quiz_questions = []
	end
	
	def add_question_answer(question, answer)
		@quiz_questions.push(Question.new(question, answer))
	end
	def add_list_of_questions_answers!(questions)
			@quiz_questions = questions
	end	
	
	def take_quiz
		puts "We are starting your quiz.  It will have #{@quiz_questions.length} questions."
		@quiz_questions.each do |question|
			puts question.ask_to_taker
			if question.answer_correct?(gets)
				@score = @score + 1
			end
		end
		puts "All Done"
	end
	
	def show_score
		puts "OK #{@quiz_taker}. You scored #{@score} out of #{@quiz_questions.length}."
	end
end

class Student
	attr_reader :name, :grade

	def initialize(name)
		@name = name
	end
	
	def add_test_score(score)
		if score == 2
			@grade = "A"
		elsif score == 1 
			@grade = "B"
		else 
			@grade = "C"
		end
	end
end 


students = []
students.push(Student.new("May"))
students.push(Student.new("Gene"))

midterm_questions = []
midterm_questions.push(Question.new("When was the Ruby created?", "1993"))
midterm_questions.push(Question.new("Who created Ruby?", "Matz"))


#quiz time for the class
students.each do |student|
	start_time = Time.new
	puts "Hi #{student.name}.  It's time for your quiz"

	quiz = Quiz.new(student.name)
	quiz.add_list_of_questions_answers!(midterm_questions)
	
	
	puts quiz.take_quiz
	puts quiz.show_score
	
	
	student.add_test_score(quiz.score)
	time_on_test = Time.new - start_time 
	puts "It took you #{time_on_test.to_i} seconds to take the test!"
	puts "Your grade for the class #{student.name} is #{student.grade}\n\n=========="
end
