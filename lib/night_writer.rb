class NightWriter
  BRAILLE_HASH = {
    "a" => %w(0. .. ..),
    "b" => %w(0. 0. ..),
    "c" => %w(00 .. ..),
    "d" => %w(00 .0 ..),
    "e" => %w(0. .0 ..),
    "f" => %w(00 0. ..),
    "g" => %w(00 00 ..),
    "h" => %w(0. 00 ..),
    "i" => %w(.0 0. ..),
    "j" => %w(.0 00 ..),
    "k" => %w(0. .. 0.),
    "l" => %w(0. 0. 0.),
    "m" => %w(00 .. 0.),
    "n" => %w(00 .0 0.),
    "o" => %w(0. .0 0.),
    "p" => %w(00 0. 0.),
    "q" => %w(00 00 0.),
    "r" => %w(0. 00 0.),
    "s" => %w(.0 0. 0.),
    "t" => %w(.0 00 0.),
    "u" => %w(0. .. 00),
    "v" => %w(0. 0. 00),
    "w" => %w(.0 00 .0),
    "x" => %w(00 .. 00),
    "y" => %w(00 .0 00),
    "z" => %w(0. .0 00),
    " " => %w(.. .. ..)
  }

  def to_braille(string)
    output = []
    first_row = string.chars.map { |char| BRAILLE_HASH[char][0] }
    output << first_row.join
    second_row = string.chars.map { |char| BRAILLE_HASH[char][1] }
    output << second_row.join
    last_row = string.chars.map { |char| BRAILLE_HASH[char][2] }
    output << last_row.join
    output.join("\n")
  end
end
