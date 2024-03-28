def counterclock()
  a, b, d = gets.chomp.split(" ").map(&:to_i)
  dia = Math.sqrt(a ** 2 + b ** 2)
  sin = 0
  cos = 0
  aDash = cos * dia
  bDash = sin * dia
  p aDash, bDash
end

counterclock()
