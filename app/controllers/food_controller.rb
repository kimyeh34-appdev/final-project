class FoodController < ApplicationController
    def home_page
        render("/food_templates/index.html.erb")
    end
    
    def enter_choices
        render("/food_templates/input_form.html.erb")
    end
    
    def input_output
        options = [params.fetch("choice_1"), params.fetch("choice_2"), params.fetch("choice_3"), params.fetch("choice_4"), params.fetch("choice_5"), params.fetch("choice_6"), params.fetch("choice_7"), params.fetch("choice_8"), params.fetch("choice_9"), params.fetch("choice_10")]
        
        filled_options = []
        
        options.each do |choice|
            if choice.blank? == false
                filled_options = filled_options.push(choice)
            end
        end
        
        
        
        @choice = filled_options.sample
        # add validation code to make sure at least one choice is filled
        
        render("/food_templates/input_output.html.erb")
    end
    
    def random_pick
        render("/food_templates/yelp_form.html.erb")
    end
    
    
end