<?php

/**
 * Implementation of hook_default_profile2_type().
 */
function recruiter_resume_default_profile2_type() {
  $items = array();
  $items['resume'] = entity_import('profile2_type', '{
    "userCategory" : false,
    "userView" : false,
    "type" : "resume",
    "label" : "Resume",
    "weight" : "0",
    "data" : { "use_page" : 1, "page_path" : "resume" },
    "rdf_mapping" : []
  }');
  return $items;
}

/**
 * Implementation of hook_views_api().
 */
function recruiter_resume_views_api() {
  return array(
    'api' => '3.0-alpha1',
  );
}
