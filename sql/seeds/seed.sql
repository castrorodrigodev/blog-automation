INSERT INTO users (id, username, email, password, birth_date)
VALUES 
    ('a23ca76d-a15c-49f9-b4bb-441dba559559', 'Rodrigo', 'rodrigo@gmail.com', '$2b$10$9fNpFpGhxSTcDQEAvW2YQ.Dw1EOxnS6x8rrXIno0jtboqfxefqLFG', '1970-01-01'),
    ('ab1d5a08-17c7-4917-940c-0c9e9047dd32', 'Fernando', 'fernando@gmail.com', '$2b$10$pYmWz/rbbATbr0N1vaBLkuEz00t1LT0/VB88U6qlJqXvAM0RXlOW2', '1970-01-01'),
    ('2a49b662-1215-4e34-9a7c-f5317545fe6c', 'Giovani', 'giovani@gmail.com', '$2b$10$fdwNUSrDDUxxN6LzAV4hCuuL/qSZGopcqOQYMQJfUOvpum9HnQyfW', '1970-01-01'),
    ('4eed7fc7-0c00-40fc-be5f-f9fc54869537', 'Marcelo', 'marcelo@gmail.com', '$2b$10$Z30YF.ISoeAKGw2N7/WhYutJq1QEdI0zCg6MN7kTMeo.YYP4cDEGq', '1970-01-01'),
    ('de9ce135-bb04-4ef4-a593-9e07af1b8fd7', 'Leonardo', 'leonardo@gmail.com', '$2b$10$XPS57eKV3Y6.eQUMdNjiWO3XReni7q8iN1Xe4.V25U8l1oa6Sf3jK', '1970-01-01');

-- **************************************************************************************
INSERT INTO posts (id, content, user_id)
VALUES 
    ('050d0338-0d6c-436a-a5de-ee3e9ef0f7bb', 'This is the first post created by Rodrigo', 'a23ca76d-a15c-49f9-b4bb-441dba559559'),
    ('0d1ff720-2f72-497c-a10a-ca3900eb2b51', 'This is the second post created by Rodrigo', 'a23ca76d-a15c-49f9-b4bb-441dba559559'),
    ('153a9d56-2df0-4e84-a97d-e249504fc222', 'This is the third post created by Rodrigo', 'a23ca76d-a15c-49f9-b4bb-441dba559559'),

    ('2ce0aa54-367e-4190-90dc-248e551fa644', 'This is the first post created by Fernando', 'ab1d5a08-17c7-4917-940c-0c9e9047dd32'),
    ('35ed0c6e-53d3-4535-a54a-5390a648e9ff', 'This is the second post created by Fernando', 'ab1d5a08-17c7-4917-940c-0c9e9047dd32'),
    ('3a29685f-152f-43c9-9fa7-4ffd1ad8219c', 'This is the third post created by Fernando', 'ab1d5a08-17c7-4917-940c-0c9e9047dd32'),
    ('47800f89-6c6f-45d0-b56a-63ad4a7dad1e', 'This is the fourth post created by Fernando', 'ab1d5a08-17c7-4917-940c-0c9e9047dd32'),
    
    ('4ec60fcb-cdd6-4d52-b091-845fe864cd8d', 'This is the first post created by Giovani', '2a49b662-1215-4e34-9a7c-f5317545fe6c'),
    ('71eb01d1-afc9-4d90-b709-54f4c39010f0', 'This is the second post created by Giovani', '2a49b662-1215-4e34-9a7c-f5317545fe6c'),
    ('a1678f09-fdc4-4b0d-88fb-cec6008b0169', 'This is the third post created by Giovani', '2a49b662-1215-4e34-9a7c-f5317545fe6c'),
    
    ('a95b7f2a-67bf-4ed4-af6c-e9ccae62d518', 'This is the first post created by Marcelo', '4eed7fc7-0c00-40fc-be5f-f9fc54869537'),
    ('b0c34949-2634-4ab6-94f1-c5b2cd920ad5', 'This is the second post created by Marcelo', '4eed7fc7-0c00-40fc-be5f-f9fc54869537'),
    ('c808d5cb-5e7c-43b1-9d39-d948645c3c53', 'This is the third post created by Marcelo', '4eed7fc7-0c00-40fc-be5f-f9fc54869537'),
    ('cbb1beee-91c9-4879-8346-721690c67511', 'This is the fourth post created by Marcelo', '4eed7fc7-0c00-40fc-be5f-f9fc54869537'),
    ('d01d8807-09ce-48e0-8887-12773fdd3d54', 'This is the fifth post created by Marcelo', '4eed7fc7-0c00-40fc-be5f-f9fc54869537'),
    
    ('ea54c904-1f6b-4d46-b10d-9dd3e542f993', 'This is the first post created by Leonardo', 'de9ce135-bb04-4ef4-a593-9e07af1b8fd7'),
    ('f04df34a-f825-4863-b9e3-dc93f7f8ca47', 'This is the second post created by Leonardo', 'de9ce135-bb04-4ef4-a593-9e07af1b8fd7'),
    ('f91b2333-d758-4fe7-bd23-215f6e460a2c', 'This is the third post created by Leonardo', 'de9ce135-bb04-4ef4-a593-9e07af1b8fd7');
-- **************************************************************************************
INSERT INTO likes (post_id, user_id)
VALUES 
    ('050d0338-0d6c-436a-a5de-ee3e9ef0f7bb', 'ab1d5a08-17c7-4917-940c-0c9e9047dd32'),
    ('050d0338-0d6c-436a-a5de-ee3e9ef0f7bb', '2a49b662-1215-4e34-9a7c-f5317545fe6c'),
    ('050d0338-0d6c-436a-a5de-ee3e9ef0f7bb', '4eed7fc7-0c00-40fc-be5f-f9fc54869537'),
    ('050d0338-0d6c-436a-a5de-ee3e9ef0f7bb', 'de9ce135-bb04-4ef4-a593-9e07af1b8fd7'),
    ('0d1ff720-2f72-497c-a10a-ca3900eb2b51', 'ab1d5a08-17c7-4917-940c-0c9e9047dd32');