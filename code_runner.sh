python ./clockangles/solution.py > ClockAngles.txt
python ./followdirections/solution.py > FollowDirections.txt
python ./ndrome/solution.py ./ndrome/SampleInput.txt > NDrome.txt
perl ./replacementgrammar/solution.pl < ./replacementgrammar/sampleinput.txt > ReplacementGrammar.txt
python ./sudoku/sudoku_solver.py ./sudoku/sampleinput.txt > Sudoku.txt
perl ./textquerymatch/solution.pl < ./textquerymatch/sampleinput.txt > TextQueryMatch.txt

"C:\Program Files\7-Zip\7z.exe" a solutions.zip *.txt
rm -f *.txt
CodeCompetitionChecker.exe SampleOutputs.zip solutions.zip