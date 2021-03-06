require 'squib'

Squib::Deck.new do 
  rect x: 300, y: 300, width: 400, height: 400, 
       fill_color: :blue, stroke_color: :red, stroke_width: 50.0

  circle x: 600, y: 600, radius: 75,
         fill_color: :gray, stroke_color: :green, stroke_width: 8.0  

  triangle x1: 50, y1: 50, 
           x2: 150, y2: 150, 
           x3: 75, y3: 250

  line x1: 50, y1: 550, 
       x2: 150, y2: 650,
       stroke_width: 25.0        

  save_png prefix: 'shape_'
end