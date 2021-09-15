require 'bookmark'

describe Bookmark do 
  describe '.all' do 
    it 'returns all bookmarks' do 
      bookmark_list = Bookmark.all

      expect(bookmark_list).to include("http://www.makersacademy.com")
      expect(bookmark_list).to include("http://www.destroyallsoftware.com")
      expect(bookmark_list).to include("http://www.google.com")
    
    
    
    
    
    end 
  end 
end 