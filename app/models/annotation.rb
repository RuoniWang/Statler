class Annotation < ActiveRecord::Base

	belongs_to :video
	belongs_to :location
	belongs_to :user
	has_many :tag_annotations
	has_many :semantic_tags, :through => :tag_annotations
	

	#this should be searching itself, with the search parameter submitted by the user	
	def self.search(search)
	  #query to identify annotations where the 'annotation' field contains a partial or complete string resembling the user query
	where("annotation like \"%#{search}%\"")

	end #end of search()
	

end