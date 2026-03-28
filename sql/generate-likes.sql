INSERT INTO
    likes (user_id, post_id)
SELECT u.id, p.id
FROM users u
    CROSS JOIN posts p
ORDER BY random()
LIMIT 100000
ON CONFLICT DO NOTHING;