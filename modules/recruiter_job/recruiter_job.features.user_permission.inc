<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function recruiter_job_user_default_permissions() {
  $permissions = array();

  // Exported permission: create job_per_file content
  $permissions['create job_per_file content'] = array(
    'name' => 'create job_per_file content',
    'roles' => array(
      '0' => 'job admin',
      '1' => 'recruiter',
    ),
  );

  // Exported permission: create job_per_link content
  $permissions['create job_per_link content'] = array(
    'name' => 'create job_per_link content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
      '2' => 'recruiter',
    ),
  );

  // Exported permission: create job_per_template content
  $permissions['create job_per_template content'] = array(
    'name' => 'create job_per_template content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
      '2' => 'recruiter',
    ),
  );

  // Exported permission: delete any job_per_file content
  $permissions['delete any job_per_file content'] = array(
    'name' => 'delete any job_per_file content',
    'roles' => array(
      '0' => 'job admin',
    ),
  );

  // Exported permission: delete any job_per_link content
  $permissions['delete any job_per_link content'] = array(
    'name' => 'delete any job_per_link content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
    ),
  );

  // Exported permission: delete any job_per_template content
  $permissions['delete any job_per_template content'] = array(
    'name' => 'delete any job_per_template content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
    ),
  );

  // Exported permission: delete own job_per_file content
  $permissions['delete own job_per_file content'] = array(
    'name' => 'delete own job_per_file content',
    'roles' => array(
      '0' => 'job admin',
      '1' => 'recruiter',
    ),
  );

  // Exported permission: delete own job_per_link content
  $permissions['delete own job_per_link content'] = array(
    'name' => 'delete own job_per_link content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
      '2' => 'recruiter',
    ),
  );

  // Exported permission: delete own job_per_template content
  $permissions['delete own job_per_template content'] = array(
    'name' => 'delete own job_per_template content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
      '2' => 'recruiter',
    ),
  );

  // Exported permission: edit any job_per_file content
  $permissions['edit any job_per_file content'] = array(
    'name' => 'edit any job_per_file content',
    'roles' => array(
      '0' => 'job admin',
    ),
  );

  // Exported permission: edit any job_per_link content
  $permissions['edit any job_per_link content'] = array(
    'name' => 'edit any job_per_link content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
    ),
  );

  // Exported permission: edit any job_per_template content
  $permissions['edit any job_per_template content'] = array(
    'name' => 'edit any job_per_template content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
    ),
  );

  // Exported permission: edit own job_per_file content
  $permissions['edit own job_per_file content'] = array(
    'name' => 'edit own job_per_file content',
    'roles' => array(
      '0' => 'job admin',
      '1' => 'recruiter',
    ),
  );

  // Exported permission: edit own job_per_link content
  $permissions['edit own job_per_link content'] = array(
    'name' => 'edit own job_per_link content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
      '2' => 'recruiter',
    ),
  );

  // Exported permission: edit own job_per_template content
  $permissions['edit own job_per_template content'] = array(
    'name' => 'edit own job_per_template content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
      '2' => 'recruiter',
    ),
  );

  // Exported permission: view own unpublished content
  $permissions['view own unpublished content'] = array(
    'name' => 'view own unpublished content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'job admin',
      '2' => 'recruiter',
    ),
  );

  return $permissions;
}
