<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function recruiter_resume_user_default_permissions() {
  $permissions = array();

  // Exported permission: access overlay
  $permissions['access overlay'] = array(
    'name' => 'access overlay',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'applicant',
      '2' => 'recruiter',
    ),
  );

  // Exported permission: edit any resume profile
  $permissions['edit any resume profile'] = array(
    'name' => 'edit any resume profile',
    'roles' => array(
      '0' => 'administrator',
    ),
  );

  // Exported permission: edit own resume profile
  $permissions['edit own resume profile'] = array(
    'name' => 'edit own resume profile',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'applicant',
    ),
  );

  // Exported permission: view any resume profile
  $permissions['view any resume profile'] = array(
    'name' => 'view any resume profile',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'recruiter',
    ),
  );

  // Exported permission: view own resume profile
  $permissions['view own resume profile'] = array(
    'name' => 'view own resume profile',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'applicant',
    ),
  );

  return $permissions;
}
