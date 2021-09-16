require 'bookmark'

describe Bookmark do 
  describe '.all' do 
    it 'returns all bookmarks' do 
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.come');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmark_list = Bookmark.all

      expect(bookmark_list).to include("http://www.makersacademy.com")
      expect(bookmark_list).to include("http://www.destroyallsoftware.come")
      expect(bookmark_list).to include("http://www.google.com")
    
    end 
  end 
end 


