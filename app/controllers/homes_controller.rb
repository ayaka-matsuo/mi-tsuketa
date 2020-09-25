class HomesController < ApplicationController

def top
    @toys = Toy.joins(:reviews).group(:toy_id).order('avg(reviews.rate) desc').limit(3)
end

def about
end

end

