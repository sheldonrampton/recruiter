<?php

/**
 * @file
 * Contains some hooks that are used during installation.
 */

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function recruiter_form_install_configure_form_alter(&$form, $form_state) {

  // Pre-populate some fields.
  $form['site_information']['site_name']['#default_value'] = t('Recruiter');
  $form['site_information']['site_mail']['#default_value'] = 'admin@' . ($_SERVER['HTTP_HOST'] != 'localhost' ? $_SERVER['HTTP_HOST'] : 'example.com');
  $form['admin_account']['account']['name']['#default_value'] = 'admin';

  // Add checkbox for example content.
  $form['recruiter'] = array(
    '#type' => 'fieldset',
    '#collapsible' => FALSE,
    '#title' => t('Recruiter'),
  );

  $form['recruiter']['recruiter_demo_content'] = array(
    '#type' => 'checkbox',
    '#title' => t('Install demo content'),
    '#description' => t('Check this option to enable demonstration content for Recruiter to get your site up and running quickly.'),
    '#default_value' => TRUE,
  );

  $form['#submit'][] = 'recruiter_install_configure_form_submit';
}


/**
 * Submit callback.
 */
function recruiter_install_configure_form_submit(&$form, &$form_state) {
  // Set variable to install or not demo content.
  variable_set('recruiter_install_demo_content', $form_state['values']['recruiter_demo_content']);
}
