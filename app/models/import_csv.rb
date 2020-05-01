class ImportCsv < ApplicationRecord

    def self.import(path)
       CSV.foreach(path, headers: true) do |row|
         AwsText.create(
           title: row["title"],
           content: row["content"]
         )
       end
    end
    
    def self.import(path)
      CSV.foreach(path, headers: true) do |row|
        Movie.create(
          title: row["title"],
          url: row["url"]
        )
      end
   end
end