CREATE TABLE IF NOT EXISTS task_it.task_workers (
    task_id INTEGER NOT NULL,
    worker_id INTEGER NOT NULL,
    CONSTRAINT pk_composite_task_workers PRIMARY KEY (task_id, worker_id),
    CONSTRAINT fk_tasks_task_workers
        FOREIGN KEY(task_id)
            REFERENCES task_it.tasks(task_id),
    CONSTRAINT fk_tasks_workers
        FOREIGN KEY(worker_id)
            REFERENCES task_it.workers(worker_id)
);