class TestsController < ApplicationController
    
    def show
        @test = Test.find(params[:id])
    end

    def index 
        @tests = Test.all 
    end
    def new 
        
    end

    def edit
        @test = Test.find(params[:id])
    end
   

    def create 
        @test = Test.new(params.require(:test).permit(:title, :description))
       @test.save
       redirect_to @test
    end
    def update
        @test = Test.find(params[:id])
        if @test.update(params.require(:test).permit(:title, :description))
            flash[:notice] = "Database Updated Successfully"
            redirect_to @test
        else
            render 'edit'
        end
    end
    def destroy
        @test = Test.find(params[:id])
        @test.destroy
        redirect_to tests_path
    end
end
