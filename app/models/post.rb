class Post < ApplicationRecord


  validates :title, length: { minimum: 4, maximum: 150 } 
  # validates :body, length: { minimum: 1 }
  belongs_to :user
  belongs_to :course
  has_many :comments, dependent: :destroy 
  validates_inclusion_of :lecture_number, in: 1..5000, message: "Value must a number > 0"
  # validates_inclusion_of :section_number, in: 1..5000, message: "Value must a number > 0"


RUBY_SECTIONS = [
["Section 1 - The Set Up", "Section 1 - The Set Up"], 
["Section 2 - Some Of The Basics", "Section 2 - Some Of The Basics"],
['Section 3 - Variables', 'Section 3 - Variables'],
['Section 4 - Welcome to Git', 'Section 4 - Welcome to Git'],
['Section 5 - It\'s a String Thing', 'Section 5 - It\'s a String Thing'],
['Section 6 - Ruby Loves Arithmetic', 'Section 6 - Ruby Loves Arithmetic'],
['Section 7 - Ruby Methods', 'Section 7 - Ruby Methods'],
['Section 8 - Ruby Operators', 'Section 8 - Ruby Operators'],
['Section 9 - Getting Input and Interaction', 'Section 9 - Getting Input and Interaction'],
['Section 10 - Arrays', 'Section 10 - Arrays'],
['Section 11 - The Hash', 'Section 11 - The Hash'],
['Section 12 - Mission Impossible', 'Section 12 - Mission Impossible'],
['Section 13 - Conditions and Loops', 'Section 13 - Conditions and Loops'],
['Section 14 - Ruby Has Class', 'Section 14 - Ruby Has Class'],
['Section 15 - Working With Files', 'Section 15 - Working With Files'],
['Section 16 - Errors', 'Section 16 - Errors'],
['Section 17 - Search WIth Grep', 'Section 17 - Search WIth Grep'],
['Section 18 - Gems', 'Section 18 - Gems'],
['Section 19 - Build A Gem', 'Section 19 - Build A Gem'],
['Section 20 - Ruby Gaming', 'Section 20 - Ruby Gaming'],
['Section 21 - Galigoo', 'Section 21 - Galigoo'],
['Rails', 'Rails'],


['Section 1 - Welcome', 'Section 1 - Welcome'],
['Section 2 - The Set Up', 'Section 2 - The Set Up'],
['Section 3 - Overview', 'Section 3 - Overview'],
['Section 4 - Rails CRUD (create, read, update, destroy)', 'Section 4 - Rails CRUD (create, read, update, destroy)'],
['Section 5 - Generators', 'Section 5 - Generators'],
['Section 6 - Gems and Forms', 'Section 6 - Gems and Forms'],

['Section 7 - An App With Users', 'Section 7 - An App With Users'],
['Section 8 - Users With Custom Fields', 'Section 8 - Users With Custom Fields'],
['Section 9 - Posts With Comments', 'Section 9 - Posts With Comments'],
['Section 10 - Recover Password', 'Section 10 - Recover Password'],
['Section 11 - Send Comment Emails', 'Section 11 - Send Comment Emails'],
['Section 12 - Seeding Data', 'Section 12 - Seeding Data'],
['Section 13 - Run It In The Background', 'Section 13 - Run It In The Background'],
['Section 14 - User Image', 'Section 14 - User Image'],
['Section 15 - Free Templating', 'Section 15 - Free Templating'],
['Section 16 - Potpourri', 'Section 16 - Potpourri'],
['Section 17 - Front End', 'Section 17 - Front End'],
['Section 18 - Administration', 'Section 18 - Administration'],
['Section 19 - User Authorization', 'Section 19 - User Authorization'],
['Section 20 - User Access', 'Section 20 - User Access'],
['Section 21 - Theme Image', 'Section 21 - Theme Image'],
['Section 22 - Content Management', 'Section 22 - Content Management'],
['Section 23 - Project', 'Section 23 - Project'],
['Section 24 - Action', 'Section 24 - Action'],
['Section 25 - Header', 'Section 25 - Header'],
['Section 26 - Footer', 'Section 26 - Footer'],
['Section 27 - Order & Time', 'Section 27 - Order & Time'],
['Section 28 - Template Authorization', 'Section 28 - Template Authorization'],
['Section 29 - Deploy', 'Section 29 - Deploy'],
['Section 30 - Receive Mail', 'Section 30 - Receive Mail'],
['Section 31 - Admin Navi', 'Section 31 - Admin Navi'],
['Section 32 - Post On Home', 'Section 32 - Post On Home'],
['Section 33 - Portfolio Grid Prep', 'Section 33 - Portfolio Grid Prep'],
['Section 34 - Portfolio Grid', 'Section 34 - Portfolio Grid'],
['Section 35 - Potpourri Two', 'Section 35 - Potpourri Two'],
['Section 36 - Colors and Custom', 'Section 36 - Colors and Custom'],
['Section 37 - More Validation', 'Section 37 - More Validation'],
['Section 38 - Deploy Part Two', 'Section 38 - Deploy Part Two'],
['Section 39 - JQuery', 'Section 39 - JQuery'],
['Section 40 - Heroku Deploy', 'Section 40 - Heroku Deploy'],
['Section 41 - Potpourri Three', 'Section 41 - Potpourri Three'],
['Section 42 - Course Resources', 'Section 42 - Course Resources']
]

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
      Post.create! row.to_hash     
    end
  end  


end 


