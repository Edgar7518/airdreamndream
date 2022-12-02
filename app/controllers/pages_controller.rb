class PagesController < ApplicationController
  def home
    @dream = Dream.find_by(name:"J'ai perdu mes dents")
    @dreamTwo = Dream.find_by(name:"Noël avec Mariah Carey")
    @dreamThree = Dream.find_by(name:"Mariage avec un chat")

  end
end
