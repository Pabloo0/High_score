require 'C:\Users\Pablo\RubymineProjects\support\High_score\process_file'
ProcessFile.new do |line|
  p (line.
        split(" | ")).
        map{ |player_scores| player_scores.split(" ").map(&:to_i)}.
        transpose.
        map(&:max).
        join(" ")
end