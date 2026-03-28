-- ===============================
-- 1. USERS (5000)
-- ===============================
INSERT INTO
    users (
        id,
        username,
        email,
        password,
        birth_date
    )
SELECT gen_random_uuid (), 'user_' || i, 'user_' || i || '@test.com', 'password', '2000-01-01'
FROM generate_series(1, 5000) i;

-- ===============================
-- 2. POSTS (20000)
-- ===============================
INSERT INTO
    posts (id, content, user_id)
SELECT gen_random_uuid (), 'post_' || i, u.id
FROM generate_series(1, 20000) i
    JOIN LATERAL (
        SELECT id
        FROM users
        ORDER BY random()
        LIMIT 1
    ) u ON true;

-- ===============================
-- 3. LIKES (1 MILLÓN)
-- ===============================
INSERT INTO
    likes (user_id, post_id)
SELECT u.id, p.id
FROM users u
    CROSS JOIN posts p
ORDER BY random()
LIMIT 1000000;