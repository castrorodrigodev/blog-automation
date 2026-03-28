UPDATE posts p
SET
    count_likes = l.total
FROM (
        SELECT post_id, COUNT(*) as total
        FROM likes
        GROUP BY
            post_id
    ) l
WHERE
    p.id = l.post_id;