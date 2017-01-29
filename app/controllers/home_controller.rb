class HomeController < ApplicationController
    
    def index
        @user = User.new(name: "Quinn")
    end
    def about
    end
    def contact
    end
    
end
