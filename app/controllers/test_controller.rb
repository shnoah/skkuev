class TestController < ApplicationController
    
    
     def index
        @test_table=Subject.all
     end
        
    
    #태훈 실험용
      def front
        @write = Evaluation.all
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
          @i = params[:dept]
    
    end
    
    def test_write
     
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
     
     def lecture
       @id = params[:id].to_s
       @lecture = Subject.where(code: params[:id])
       @eval = Evaluation.where(lecture_id: params[:id])
       
       sum=0
       @avg=0
    
        @eval.each do |x|
            sum+=x.lecture_score
        end

        if @eval.count!=0
            @avg=sum/@eval.count
        end
    
    
     end
     

     
     def evaluate 
         @lecture_name = params[:lecture_name]
         @lecture_prof = params[:lecture_prof]
         @lecture_id = params[:lecture_id]
     end
     
    def evaluate_write
       Evaluation.create(lecture_id: params[:lecture_id], lecture_score: params[:lecture_score], content: params[:content])
     
       redirect_to action: "lecture", id: params[:lecture_id]
     end
end