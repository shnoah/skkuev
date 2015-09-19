class Subject < ActiveRecord::Base
include SearchCop
search_scope :search do 
attributes :name


end
#searchable do

#   text :name, :code
#end
end
