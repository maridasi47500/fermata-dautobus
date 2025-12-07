class Piece < ApplicationRecord
has_many :passages
def hey
{:nederlands => "c d e f g a bes b",
 :catalan => "do re mi fa sol la sib si",
:deutsch => "c d e f g a b h",
:english => "c d e f g a bf/b-flat b",
:espanol => "do re mi fa sol la sib si",
:français => "do ré/re mi fa sol la sib si",
:italiano => "do re mi fa sol la sib si",
:norsk => "c d e f g a b h",
 :portugues =>"do re mi fa sol la sib si",
:suomi =>"c d e f g a b h",
:svenska => "c d e f g a b h",
:vlaams	=> "do re mi fa sol la sib si"}
end
end
