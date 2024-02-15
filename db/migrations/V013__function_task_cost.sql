CREATE OR REPLACE FUNCTION task_it.task_cost(task_id_param int)
RETURNS TABLE(task_id int, task_name text, task_cost numeric)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT Tasks.task_id, Tasks.name, Prices.cost
    FROM Tasks
    INNER JOIN Prices ON Tasks.task_id = Prices.task_id
    WHERE Tasks.task_id = task_id_param ;
END;
$$