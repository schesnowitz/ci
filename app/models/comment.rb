class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def self.as_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |item|
        csv << item.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)	
    CSV.foreach(file.path, headers: true) do |row|
      Comment.create! row.to_hash     
    end
  end  

  # validates :body, length: { minimum: 4, maximum: 300 } 
end
