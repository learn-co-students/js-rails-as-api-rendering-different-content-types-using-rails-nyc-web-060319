class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[3].name}"
    # render json: @birds
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
      # ^ Rather than an array of four birds, 
      # an object with two keys, each pointing to an array would be rendered instead
      # So Messages is a key @ bottom pointing to array ['Hello Birds', 'Goodbye Birds']
      # Can add .to_json :  ...Birds'] }.to_json  - dont *need* though bc Ruby magic
 
    end

  # For Text: (In console on .html page, after rails s started)
  # fetch('http://localhost:3000/birds').then(response => response.text())
  # .then(text => console.log(text))

  # For JSON : (In console on .html page, after rails s started)
  # fetch('http://localhost:3000/birds').then(response => response.json())
  # .then(object => console.log(object))
  # Also see the output for each one if click to localhost:3000/birds


end
