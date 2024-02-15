CREATE OR REPLACE FUNCTION task_it.task_cost(task_id_param int)
RETURNS TABLE(task_id int, task_name text, task_cost numeric)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT t.task_id, t.name, p.cost
    FROM task_it.tasks t
    INNER JOIN task_it.Prices p ON t.task_id = p.task_id
    WHERE t.task_id = task_id_param ;
END;
$$