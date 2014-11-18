
Note: n can be changed in line 341

Significance of n:
n is used in limited discrepancy search. if a mistake is made, it impacts the subsequent search substantially and the mistake is never retracted until the entire associated subspace is examined. n helps in having a limited depth.

Before fill, The solver gets a good accuracy as n increases. But the time taken also increases.
The minimum n for which there is accuracy of more than 75% is 1

The following are the results for n = 1

 runtime_before_fill : 7.16
 total_squares : 189.00
 matching_squares_before_fill : 172.00
 runtime_before_fill : 7.39
 total_squares : 187.00
 matching_squares_before_fill : 137.00
 runtime_before_fill : 7.14
 total_squares : 187.00
 matching_squares_before_fill : 127.00
 runtime_before_fill : 8.36
 total_squares : 188.00
 matching_squares_before_fill : 170.00



Maximum n for which it takes less than 20 minutes is n = 3
The following are the results for n = 3

 runtime_before_fill : 128.18
 total_squares : 189.00
 matching_squares_before_fill : 175.00
 runtime_before_fill : 138.73
 total_squares : 187.00
 matching_squares_before_fill : 155.00
 runtime_before_fill : 128.55
 total_squares : 187.00
 matching_squares_before_fill : 137.00
 runtime_before_fill : 143.70
 total_squares : 188.00
 matching_squares_before_fill : 181.00


Part 2:

After fill for the puzzle may0514 for n = 1 is

 matching_words_after_fill : 68.00
 correct_answer_was_candidate : 71.00
 matching_squares_after_fill : 176.00
 total_words : 78.00
 total_squares : 189.00
 runtime : 8.63


Before fill for the same puzzle and n value is 

 correct_answer_was_candidate : 71.00
 total_words : 78.00
 runtime_before_fill : 7.29
 matching_words_before_fill : 65.00
 total_squares : 189.00
 runtime : 7.29
 matching_squares_before_fill : 172.00

 As you can see, the efficiency has been increased from 91% to 93%


The algorithm for fill in the blanks:

The words from the answers_cwg_otsys.txt are put in a list
The answers on the solution for each clue is got and a regex is made out of it. '-' should match any single character
If a match is found, it is replaced with the answer. and the intersecting answers are also updated with update_solution function



