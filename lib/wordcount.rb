require 'sinatra'
require 'rspec'

get '/word_form' do
  "<form action='/count' method='post'>
  <label for='text'>Enter some text!</label>
  <textarea name='text' id='text' type='text' /></textarea>
  <input type='submit' value='Go!' />
  </form>"
end

def remove_commas(text)
  text.delete(",")
end

def make_array(text)
  text.gsub(" ", ",").split(',')
end

def count_words(arr)
  arr.length
end

post '/count' do
  text_array = make_array(params[:text])
  count = count_words(text_array)
  "Your article is #{count.to_s} words in length."
end