class TestController < ApplicationController
    
    
     def index
    
        @test_table=Subject.all
        
    end
    
    
    
    #태훈 실험용
      def front
        @write = Write.all
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
    
    end
    
    #증환 테스트
    
    def member
      
    end

end
