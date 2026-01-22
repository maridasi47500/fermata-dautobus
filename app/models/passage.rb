
class Passage < ApplicationRecord
belongs_to :piece
after_update :hey
after_create :hey
def hey




@score="
<lilypond fragment staffsize=26>
  \\language \"#{piece.language}\"
  \\key #{key_signature.sub(" "," \\")}
  \\numericTimeSignature
  \\time #{time_signature}
  #{myscore}
</lilypond>




"

p @score

wow="./public/uploads/"
hi=self.title.parameterize+self.id.to_s
p wow+hi
File.write(wow+"hey"+hi+".html", @score)
@hey=`(cd #{wow} && lilypond-book hey#{hi}.html -f html --output #{hi})`

end

end
