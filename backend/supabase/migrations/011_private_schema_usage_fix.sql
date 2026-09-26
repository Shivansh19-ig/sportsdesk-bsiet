-- Required for authenticated clients to execute the private helper functions
-- used by the student/teacher attendance RPCs.

grant usage on schema private to authenticated;

revoke usage on schema private from anon;
revoke usage on schema private from public;

grant execute on function private.is_teacher() to authenticated;
grant execute on function private.current_student_id() to authenticated;
grant execute on function private.student_belongs_to_current_user(uuid) to authenticated;
