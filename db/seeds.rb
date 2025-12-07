# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
piece=Piece.create(title: "la floresta", composer: "me", key_signature: "a major", time_signature: "5/4")
passage=piece.passages.create(title: "hey ther", description: "wow yes hey", time_signature: "5/4", key_signature: "f major", myscore: "    \\new StaffGroup = \"StaffGroup_strings\" <<
      \\new GrandStaff = \"GrandStaff_violins\" <<
        \\new Staff = \"Staff_violinI\" \\with {
          instrumentName = \"Violin I\"
        }
         { a b c \\fermata } 
        \\new Staff = \"Staff_violinII\" \\with {
          instrumentName = \"Violin II\"
        }
         { a b c  d \\fermata }      

      \\new Staff = \"Staff_viola\" \\with {
        instrumentName = \"Viola\"
      }
        { b b b b \\fermata }
>>
      \\new Staff = \"Staff_cello\" \\with {
        instrumentName = \"Cello\"
      }
        { a b c d \\fermata }

      \\new Staff = \"Staff_bass\" \\with {
        instrumentName = \"Double Bass\"
      }
        { d e f g  \\fermata } 
>>")
