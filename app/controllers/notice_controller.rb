class NoticeController < ApplicationController
    def notice_board
        fa =Notice.all
    end
    
    def notice_write
        
        
    end
    
    def notice_write_process
        
    end
    
    def notice_write_action
     
     fa =Notice.new
     fa.no_content =params[:n_contents]
     fa.no_title =params[:n_title]
     fa.no_password =params[:n_password]
     fa.save

    redirect_to "/notice/notice_board"
    
    end
    
    
    def notice_detail
    end
    
    

end


