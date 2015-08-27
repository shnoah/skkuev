class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      
      t.string :group     #대학 (ex:경제대학)
      t.string :dept      #학과 (ex:경제학과)
      t.string :division  #구분 (전공,교양)
      t.string :code      #학수번호
      t.string :name      #교과목명
      t.string :prof      #교수
      t.text   :time      #시간 
      t.string :category  #분류
      t.string :credit    #학점
      t.string :l_time    #시수
      t.string :ppl       #담은인원
      t.string :max_ppl   #수강정원
      t.string :note00    #비고 0 (보통 캠퍼스 분류)
      t.string :note01    #비고 1 (보통 수업유형)
      t.string :note02    #비고 2 
      t.string :note03    #비고 3
      t.string :note04    #비고 4
      
      #임시 사용 필드???
      #뭐가 필요할까
      
      def self.search(search)
        if search
          find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
        else
          find(:all)
        end
      end

      
      t.timestamps null: false
    end
  end
end
