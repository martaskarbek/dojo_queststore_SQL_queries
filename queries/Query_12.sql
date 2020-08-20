select artifacts.name, count(name)
from shared_artifacts_payments, student_artifacts, artifacts
where shared_artifacts_payments.student_artifact_id = student_artifacts.id and student_artifacts.artifact_id = artifacts.id
group by artifacts.name
order by count desc
limit 3;
