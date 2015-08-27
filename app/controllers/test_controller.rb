class TestController < ApplicationController
    
    
     def index
    
        @test_table=Subject.all
    
     end
        
    
    #태훈 실험용
      def front
        @write = Write.all
        @sb = Market.all
      end
      
      def specific
        @writes = Write.where(subject_id: params[:id])
      end
    
    
      def write
        @subject = Subject.all
        
      end
      
      def write_complete
        Write.create(subject_id: params[:subject_id], content: params[:content])
        redirect_to "/"
      end

    #운 테스트
    
    def write_cate
      @test_a = params[:choice_a]
    end
    
    def serach_a
      @subject = Subject.all
    end
    
    def c_write_action
      cw = Write.new
    end
    
    
    
    #증환 테스트
    
    def member
      
    end
    
    def check
    
       @i = params[:dept]
       
       
    
    end
    
    def market
        
        sb = Market.new
        sb.title = params[:title]
        sb.money = params[:money]
        sb.bunho = params[:bunho]
        sb.sulmung = params[:sulmung]
        sb.save
        
    end
    
     def index
    
        @test_table=Subject.all
    
     end
end