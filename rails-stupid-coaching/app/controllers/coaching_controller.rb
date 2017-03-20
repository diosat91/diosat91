class CoachingController < ApplicationController

	def answer
		@question = params[:query]
		@coach_answer = eval_answer
	end

	def eval_answer

		if @question == @question.upcase
	      coach_answer_enhanced
	    else
	      coach_answer
	    end

	end

	def coach_answer
		if @question == "I am going to work right now!"
		    @coach_answer = "YOU GO GIRL!"
		elsif @question.end_with? "?"
		    @coach_answer = "Silly question, get dressed and go to work!"
		else
		   @coach_answer = "I don't care, get dressed and go to work!"
		end
	end

	def coach_answer_enhanced
		if @question == "I am going to work right now!".upcase
		  @coach_answer = "I can feel your motivation! YOU GO GIRL!"
		else 
		  @coach_answer = "I can feel your motivation! " + coach_answer
		end
	end
end
