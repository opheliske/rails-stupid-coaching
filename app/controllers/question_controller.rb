# frozen_string_literal: true

class QuestionController < ApplicationController
  # Store the question as a string
  def question; end

  def answer
    @question = params[:question]
    @answer = case @question # Use params to get the question from the request
              when 'I am going to work'
                'Great!'
              when /.*\?.*/
                'Silly question, get dressed and go to work!.'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
