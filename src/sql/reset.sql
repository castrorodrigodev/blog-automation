DO $$
DECLARE
    tablename text;
BEGIN
    EXECUTE 'SET session_replication_role = replica';

    FOR tablename IN
        SELECT t.tablename
        FROM pg_tables t
        WHERE t.schemaname = 'public'
    LOOP
        EXECUTE format('DROP TABLE IF EXISTS %I CASCADE;', tablename);
    END LOOP;

    EXECUTE 'SET session_replication_role = DEFAULT';
END $$;
