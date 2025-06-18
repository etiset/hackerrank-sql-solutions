SELECT
    Hackers.hacker_id,
    Hackers.name
FROM Hackers
JOIN Submissions ON Hackers.hacker_id = Submissions.hacker_id
JOIN Challenges ON Submissions.challenge_id = Challenges.challenge_id
JOIN Difficulty ON Challenges.difficulty_level = Difficulty.difficulty_level
WHERE Difficulty.score = Submissions.score
GROUP BY Hackers.hacker_id, Hackers.name
HAVING COUNT(DISTINCT Submissions.challenge_id) > 1
ORDER BY COUNT(*) DESC, Hackers.hacker_id