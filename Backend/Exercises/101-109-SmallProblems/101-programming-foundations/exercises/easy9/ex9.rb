# write a method
# IN -> three numerical scores(integers)
# DO -> determine the average of the scores and returns the letter associated with that grade
        # A  90 <= score <= 100
        # B  80 <= score < 90
        # C  70 <= score < 80
        # D  60 <= score < 70
        # F  0  <= score < 60

INF = Float::INFINITY

def get_grade(score1, score2, score3)
  total = score1 + score2 + score3
  average = total / 3

  case average
  when 100..INF then 'A+'
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else             'F'
  end
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
get_grade(200, 300, 89) == "A+"