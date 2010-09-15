<?php

/**
 * Implementation of hook_default_search_api_facet().
 */
function recruiter_resume_search_default_search_api_facet() {
  $items = array();
  $items['resume_search_field_resume_langu'] = entity_import('search_api_facet', '{
    "delta" : "resume_search_field_resume_langu",
    "index_id" : "resume_search",
    "field" : "field_resume_languages:field_resume_languages_level:term:name",
    "name" : "Resume search: Languages",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "Language \\u00bb Languages \\u00bb Taxonomy Term \\u00bb Name",
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  $items['resume_search_field_resume_ski_1'] = entity_import('search_api_facet', '{
    "delta" : "resume_search_field_resume_ski_1",
    "index_id" : "resume_search",
    "field" : "field_resume_skills_it:field_resume_skills_it_level:term:name",
    "name" : "Resume search: IT skills",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "IT skills \\u00bb IT skills \\u00bb Taxonomy Term \\u00bb Name",
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  $items['resume_search_field_resume_skill'] = entity_import('search_api_facet', '{
    "delta" : "resume_search_field_resume_skill",
    "index_id" : "resume_search",
    "field" : "field_resume_skills_general:field_resume_skills_general_lev:term:name",
    "name" : "Resume search: General skills",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "General skills \\u00bb General skills \\u00bb Taxonomy Term \\u00bb Name",
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  $items['resume_search_field_resume_xp_fi'] = entity_import('search_api_facet', '{
    "delta" : "resume_search_field_resume_xp_fi",
    "index_id" : "resume_search",
    "field" : "field_resume_xp:field_resume_xp_organization",
    "name" : "Resume search: Work experience \\u00bb Company name",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "Work experience \\u00bb Company name",
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  return $items;
}

/**
 * Implementation of hook_default_search_api_index().
 */
function recruiter_resume_search_default_search_api_index() {
  $items = array();
  $items['resume_search'] = entity_import('search_api_index', '{
    "name" : "Resume search",
    "machine_name" : "resume_search",
    "description" : null,
    "server" : "solr_server",
    "entity_type" : "profile2",
    "options" : {
      "cron_limit" : "50",
      "fields" : {
        "search_api_language" : {
          "name" : "Item language",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 1
        },
        "search_api_url" : { "name" : "URI", "type" : "uri", "boost" : "1.0", "indexed" : 1 },
        "search_api_fulltext_1" : {
          "name" : "Aggregated fulltext",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 1
        },
        "pid" : {
          "name" : "Profile ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "label" : { "name" : "Label", "type" : "text", "boost" : "1.0", "indexed" : 0 },
        "field_resume_state" : {
          "name" : "Resume state",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 1
        },
        "type:id" : {
          "name" : "Type \\u00bb Internal, numeric profile type ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "type:type" : {
          "name" : "Type \\u00bb Machine-readable name",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 0
        },
        "type:label" : {
          "name" : "Type \\u00bb Label",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "type:weight" : {
          "name" : "Type \\u00bb Weight",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "type:data" : {
          "name" : "Type \\u00bb Data",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "type:status" : {
          "name" : "Type \\u00bb Status",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "type:module" : {
          "name" : "Type \\u00bb Module",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "user:uid" : {
          "name" : "User \\u00bb User ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "user:name" : {
          "name" : "User \\u00bb Name",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "user:mail" : {
          "name" : "User \\u00bb Email",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "user:url" : {
          "name" : "User \\u00bb URL",
          "type" : "uri",
          "boost" : "1.0",
          "indexed" : 0
        },
        "user:edit_url" : {
          "name" : "User \\u00bb Edit URL",
          "type" : "uri",
          "boost" : "1.0",
          "indexed" : 0
        },
        "user:last_login" : {
          "name" : "User \\u00bb Last login",
          "type" : "date",
          "boost" : "1.0",
          "indexed" : 0
        },
        "user:created" : {
          "name" : "User \\u00bb Created",
          "type" : "date",
          "boost" : "1.0",
          "indexed" : 0
        },
        "user:roles" : {
          "name" : "User \\u00bb User roles",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_education:item_id" : {
          "name" : "Education \\u00bb Field-collection item ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_education:field_name" : {
          "name" : "Education \\u00bb Field name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_education:field_resume_education_instituti" : {
          "name" : "Education \\u00bb Institution name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_resume_education:field_resume_education_type" : {
          "name" : "Education \\u00bb Education type",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_resume_education:field_resume_summary" : {
          "name" : "Education \\u00bb Summary",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_job_preferences:item_id" : {
          "name" : "Job preferences \\u00bb Field-collection item ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_job_preferences:field_name" : {
          "name" : "Job preferences \\u00bb Field name",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_job_preferences:field_resume_job_availability" : {
          "name" : "Job preferences \\u00bb Available to start",
          "type" : "date",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_resume_job_preferences:field_resume_job_title" : {
          "name" : "Job preferences \\u00bb Desired job title",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_languages:item_id" : {
          "name" : "Language \\u00bb Field-collection item ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_languages:field_name" : {
          "name" : "Language \\u00bb Field name",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_languages:field_resume_notes" : {
          "name" : "Language \\u00bb Additional notes",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_personal_info:item_id" : {
          "name" : "Personal information \\u00bb Field-collection item ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_personal_info:field_name" : {
          "name" : "Personal information \\u00bb Field name",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_personal_info:field_resume_forename" : {
          "name" : "Personal information \\u00bb First name",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_personal_info:field_resume_phone" : {
          "name" : "Personal information \\u00bb Phone",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_personal_info:field_resume_surename" : {
          "name" : "Personal information \\u00bb Last name",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_general:item_id" : {
          "name" : "General skills \\u00bb Field-collection item ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_general:field_name" : {
          "name" : "General skills \\u00bb Field name",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_general:field_resume_notes" : {
          "name" : "General skills \\u00bb Additional notes",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_it:item_id" : {
          "name" : "IT skills \\u00bb Field-collection item ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_it:field_name" : {
          "name" : "IT skills \\u00bb Field name",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_it:field_resume_notes" : {
          "name" : "IT skills \\u00bb Additional notes",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_xp:item_id" : {
          "name" : "Work experience \\u00bb Field-collection item ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_xp:field_name" : {
          "name" : "Work experience \\u00bb Field name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_xp:field_resume_summary" : {
          "name" : "Work experience \\u00bb Summary",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_xp:field_resume_job_title" : {
          "name" : "Work experience \\u00bb Job title",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_xp:field_resume_xp_organization" : {
          "name" : "Work experience \\u00bb Company name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_resume_languages:field_resume_languages_level:level" : {
          "name" : "Language \\u00bb Languages \\u00bb Level",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_general:field_resume_skills_general_lev:level" : {
          "name" : "General skills \\u00bb General skills \\u00bb Level",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_it:field_resume_skills_it_level:level" : {
          "name" : "IT skills \\u00bb IT skills \\u00bb Level",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_languages:field_resume_languages_level:term:tid" : {
          "name" : "Language \\u00bb Languages \\u00bb Taxonomy Term \\u00bb Term ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_languages:field_resume_languages_level:term:name" : {
          "name" : "Language \\u00bb Languages \\u00bb Taxonomy Term \\u00bb Name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_resume_languages:field_resume_languages_level:term:description" : {
          "name" : "Language \\u00bb Languages \\u00bb Taxonomy Term \\u00bb Description",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_languages:field_resume_languages_level:term:weight" : {
          "name" : "Language \\u00bb Languages \\u00bb Taxonomy Term \\u00bb Weight",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_languages:field_resume_languages_level:term:node_count" : {
          "name" : "Language \\u00bb Languages \\u00bb Taxonomy Term \\u00bb Node count",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_languages:field_resume_languages_level:term:url" : {
          "name" : "Language \\u00bb Languages \\u00bb Taxonomy Term \\u00bb URL",
          "type" : "list\\u003curi\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_general:field_resume_skills_general_lev:term:tid" : {
          "name" : "General skills \\u00bb General skills \\u00bb Taxonomy Term \\u00bb Term ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_general:field_resume_skills_general_lev:term:name" : {
          "name" : "General skills \\u00bb General skills \\u00bb Taxonomy Term \\u00bb Name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_resume_skills_general:field_resume_skills_general_lev:term:description" : {
          "name" : "General skills \\u00bb General skills \\u00bb Taxonomy Term \\u00bb Description",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_general:field_resume_skills_general_lev:term:weight" : {
          "name" : "General skills \\u00bb General skills \\u00bb Taxonomy Term \\u00bb Weight",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_general:field_resume_skills_general_lev:term:node_count" : {
          "name" : "General skills \\u00bb General skills \\u00bb Taxonomy Term \\u00bb Node count",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_general:field_resume_skills_general_lev:term:url" : {
          "name" : "General skills \\u00bb General skills \\u00bb Taxonomy Term \\u00bb URL",
          "type" : "list\\u003curi\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_it:field_resume_skills_it_level:term:tid" : {
          "name" : "IT skills \\u00bb IT skills \\u00bb Taxonomy Term \\u00bb Term ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_it:field_resume_skills_it_level:term:name" : {
          "name" : "IT skills \\u00bb IT skills \\u00bb Taxonomy Term \\u00bb Name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_resume_skills_it:field_resume_skills_it_level:term:description" : {
          "name" : "IT skills \\u00bb IT skills \\u00bb Taxonomy Term \\u00bb Description",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_it:field_resume_skills_it_level:term:weight" : {
          "name" : "IT skills \\u00bb IT skills \\u00bb Taxonomy Term \\u00bb Weight",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_it:field_resume_skills_it_level:term:node_count" : {
          "name" : "IT skills \\u00bb IT skills \\u00bb Taxonomy Term \\u00bb Node count",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_resume_skills_it:field_resume_skills_it_level:term:url" : {
          "name" : "IT skills \\u00bb IT skills \\u00bb Taxonomy Term \\u00bb URL",
          "type" : "list\\u003curi\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        }
      },
      "data_alter_callbacks" : {
        "search_api_alter_bundle_filter" : {
          "status" : 1,
          "weight" : "0",
          "settings" : { "default" : "0", "bundles" : { "resume" : "resume" } }
        },
        "search_api_alter_add_fulltext" : {
          "status" : 1,
          "weight" : "0",
          "settings" : { "fields" : { "search_api_fulltext_1" : {
                "name" : "Aggregated fulltext",
                "fields" : {
                  "user:name" : "user:name",
                  "field_resume_education:field_resume_education_instituti" : "field_resume_education:field_resume_education_instituti",
                  "field_resume_education:field_resume_education_type" : "field_resume_education:field_resume_education_type",
                  "field_resume_education:field_resume_summary" : "field_resume_education:field_resume_summary",
                  "field_resume_job_preferences:field_resume_job_title" : "field_resume_job_preferences:field_resume_job_title",
                  "field_resume_languages:field_resume_notes" : "field_resume_languages:field_resume_notes",
                  "field_resume_personal_info:field_name" : "field_resume_personal_info:field_name",
                  "field_resume_personal_info:field_resume_forename" : "field_resume_personal_info:field_resume_forename",
                  "field_resume_personal_info:field_resume_phone" : "field_resume_personal_info:field_resume_phone",
                  "field_resume_personal_info:field_resume_surename" : "field_resume_personal_info:field_resume_surename",
                  "field_resume_skills_general:field_resume_notes" : "field_resume_skills_general:field_resume_notes",
                  "field_resume_skills_it:field_resume_notes" : "field_resume_skills_it:field_resume_notes",
                  "field_resume_xp:field_resume_summary" : "field_resume_xp:field_resume_summary",
                  "field_resume_xp:field_resume_job_title" : "field_resume_xp:field_resume_job_title",
                  "field_resume_xp:field_resume_organization" : "field_resume_xp:field_resume_organization",
                  "field_resume_xp:field_resume_xp_organization" : "field_resume_xp:field_resume_xp_organization",
                  "field_resume_languages:field_resume_languages_level:term:name" : "field_resume_languages:field_resume_languages_level:term:name",
                  "field_resume_skills_general:field_resume_skills_general_lev:term:name" : "field_resume_skills_general:field_resume_skills_general_lev:term:name",
                  "field_resume_skills_it:field_resume_skills_it_level:term:name" : "field_resume_skills_it:field_resume_skills_it_level:term:name",
                  "search_api_language" : 0,
                  "search_api_url" : 0,
                  "search_api_fulltext_1" : 0,
                  "pid" : 0,
                  "label" : 0,
                  "type:id" : 0,
                  "type:type" : 0,
                  "type:label" : 0,
                  "type:weight" : 0,
                  "type:data" : 0,
                  "type:status" : 0,
                  "type:module" : 0,
                  "user:uid" : 0,
                  "user:mail" : 0,
                  "user:url" : 0,
                  "user:edit_url" : 0,
                  "user:last_login" : 0,
                  "user:created" : 0,
                  "user:roles" : 0,
                  "field_resume_education:item_id" : 0,
                  "field_resume_education:field_name" : 0,
                  "field_resume_job_preferences:item_id" : 0,
                  "field_resume_job_preferences:field_name" : 0,
                  "field_resume_job_preferences:field_resume_job_availability" : 0,
                  "field_resume_languages:item_id" : 0,
                  "field_resume_languages:field_name" : 0,
                  "field_resume_personal_info:item_id" : 0,
                  "field_resume_skills_general:item_id" : 0,
                  "field_resume_skills_general:field_name" : 0,
                  "field_resume_skills_it:item_id" : 0,
                  "field_resume_skills_it:field_name" : 0,
                  "field_resume_xp:item_id" : 0,
                  "field_resume_xp:field_name" : 0,
                  "field_resume_languages:field_resume_languages_level:level" : 0,
                  "field_resume_skills_general:field_resume_skills_general_lev:level" : 0,
                  "field_resume_skills_it:field_resume_skills_it_level:level" : 0,
                  "field_resume_languages:field_resume_languages_level:term:tid" : 0,
                  "field_resume_languages:field_resume_languages_level:term:description" : 0,
                  "field_resume_languages:field_resume_languages_level:term:weight" : 0,
                  "field_resume_languages:field_resume_languages_level:term:node_count" : 0,
                  "field_resume_languages:field_resume_languages_level:term:url" : 0,
                  "field_resume_skills_general:field_resume_skills_general_lev:term:tid" : 0,
                  "field_resume_skills_general:field_resume_skills_general_lev:term:description" : 0,
                  "field_resume_skills_general:field_resume_skills_general_lev:term:weight" : 0,
                  "field_resume_skills_general:field_resume_skills_general_lev:term:node_count" : 0,
                  "field_resume_skills_general:field_resume_skills_general_lev:term:url" : 0,
                  "field_resume_skills_it:field_resume_skills_it_level:term:tid" : 0,
                  "field_resume_skills_it:field_resume_skills_it_level:term:description" : 0,
                  "field_resume_skills_it:field_resume_skills_it_level:term:weight" : 0,
                  "field_resume_skills_it:field_resume_skills_it_level:term:node_count" : 0,
                  "field_resume_skills_it:field_resume_skills_it_level:term:url" : 0
                }
              }
            }
          }
        },
        "search_api_alter_add_url" : { "status" : 1, "weight" : "0", "settings" : [] }
      },
      "processors" : {
        "search_api_case_ignore" : { "status" : 0, "weight" : "0", "settings" : { "strings" : 0 } },
        "search_api_html_filter" : {
          "status" : 0,
          "weight" : "10",
          "settings" : {
            "title" : 0,
            "alt" : 1,
            "tags" : "h1 = 5\\r\\n                                                        h2 = 3\\r\\n                                                        h3 = 2\\r\\n                                                        strong = 2\\r\\n                                                        b = 2\\r\\n                                                        em = 1.5\\r\\n                                                        u = 1.5"
          }
        },
        "search_api_tokenizer" : {
          "status" : 0,
          "weight" : "20",
          "settings" : { "spaces" : "[^\\\\p{L}\\\\p{N}]", "ignorable" : "[-]" }
        }
      }
    },
    "enabled" : "1",
    "rdf_mapping" : []
  }');
  return $items;
}

/**
 * Implementation of hook_views_api().
 */
function recruiter_resume_search_views_api() {
  return array(
    'api' => '3.0-alpha1',
  );
}
