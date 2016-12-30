class Job < ActiveRecord::Base
    resourcify
    belongs_to :category
    
    
end
