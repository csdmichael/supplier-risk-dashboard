-- Forward-only migration 0002: reference data so a new environment is not empty.
-- Re-runnable: each row is inserted only when its title is absent.
INSERT INTO dashboard (title, reference, status, priority)
SELECT 'Sample Dashboard 1', 'D-0001', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM dashboard WHERE title = 'Sample Dashboard 1');
INSERT INTO dashboard (title, reference, status, priority)
SELECT 'Sample Dashboard 2', 'D-0002', 'in-progress', 'normal'
WHERE NOT EXISTS (SELECT 1 FROM dashboard WHERE title = 'Sample Dashboard 2');
INSERT INTO dashboard (title, reference, status, priority)
SELECT 'Sample Dashboard 3', 'D-0003', 'complete', 'high'
WHERE NOT EXISTS (SELECT 1 FROM dashboard WHERE title = 'Sample Dashboard 3');
INSERT INTO dashboard (title, reference, status, priority)
SELECT 'Sample Dashboard 4', 'D-0004', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM dashboard WHERE title = 'Sample Dashboard 4');
