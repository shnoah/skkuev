class NoticeController < ApplicationController
    def notice_board
        @nna =Notice.all
    end
    
    def notice_detail
     @this_article = Notice.find(params[:id])

    end
    
    def notice_delete
     @this_post= Notice.find(params[:id])

    end
    
    
    def notice_delete_process
        
        @flag=0
        @this_post = Notice.find(params[:id]) 
        
        match = params[:delete_password]
        
        if (@this_post.no_password==match)
            @flag=1
            @this_post.destroy
            
            redirect_to '/notice/notice_board'       
        else
            @flag = 0      
        end          
    end
    
    def notice_write
        
        
    end
    
    def notice_write_process
        
    end
    
    def notice_write_action
     
     na =Notice.new
     na.no_content =params[:n_contents]
     na.no_title =params[:n_title]
     na.no_password =params[:n_password]
     na.save

    redirect_to "/notice/notice_board"
    
    end
    
    
    

end


