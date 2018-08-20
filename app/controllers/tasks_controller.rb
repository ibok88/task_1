class TasksController < ApplicationController

    def index
    
       
    
    end
    
    def show
        array_output = Array.new
        if (params[:value].to_i > 1) 
            for number in 1..params[:value].to_i do 
                array_output << number
            end
            render json: {status: 'SUCCESS',message: 'There you go:',  data: array_output}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Uhmmmm, Do it again'}, status: :unprocessable_entity
          
        
        
        end
    end
end
