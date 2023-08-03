class ApplicationController < ActionController::Base
    before_action do 
        puts 'first filter'
    end

    after_action do
        puts 'last filter'
    end
end
