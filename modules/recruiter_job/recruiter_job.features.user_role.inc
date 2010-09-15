<?php

/**
 * Implementation of hook_user_default_roles().
 */
function recruiter_job_user_default_roles() {
  $roles = array();

  // Exported role: job admin
  $roles['job admin'] = array(
    'name' => 'job admin',
    'weight' => '5',
  );

  return $roles;
}
