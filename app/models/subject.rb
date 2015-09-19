class Subject < ActiveRecord::Base
has_many :evaluations

include SearchCop
    search_scope :search do 
    attributes :name
end
    def avg
        sum = 0
        comments.each do |c|
            sum += c.score
        end
        
        if comments.count == 0
            0
        else
            sum.to_f / comments.count
        end
    end

end
