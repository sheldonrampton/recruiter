<?php
/**
 * @file
 * recruiter_job_search.features.inc
 */

/**
 * Implementation of hook_ctools_plugin_api().
 */
function recruiter_job_search_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => 1);
  }
}

/**
 * Implementation of hook_views_api().
 */
function recruiter_job_search_views_api() {
  list($module, $api) = func_get_args();
  if ($module == "views" && $api == "views_default") {
    return array("version" => 3.0);
  }
}

/**
 * Implementation of hook_default_search_api_facet().
 */
function recruiter_job_search_default_search_api_facet() {
  $items = array();
  $items['job_search_field_job_languages_n'] = entity_import('search_api_facet', '{
    "delta" : "job_search_field_job_languages_n",
    "index_id" : "job_search",
    "field" : "field_job_languages:name",
    "name" : "Job search: Required languages \\u00bb Name",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "Required languages \\u00bb Name",
      "display_more_link" : false,
      "more_limit" : 10,
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  $items['job_search_field_job_occupationa'] = entity_import('search_api_facet', '{
    "delta" : "job_search_field_job_occupationa",
    "index_id" : "job_search",
    "field" : "field_job_occupational_field:name",
    "name" : "Job search: Occupational fields \\u00bb Name",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "Occupational fields \\u00bb Name",
      "display_more_link" : false,
      "more_limit" : 10,
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  $items['job_search_field_job_of_study_na'] = entity_import('search_api_facet', '{
    "delta" : "job_search_field_job_of_study_na",
    "index_id" : "job_search",
    "field" : "field_job_of_study:name",
    "name" : "Job search: Fields of study \\u00bb Name",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "Fields of study \\u00bb Name",
      "display_more_link" : false,
      "more_limit" : 10,
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  $items['job_search_field_job_organizatio'] = entity_import('search_api_facet', '{
    "delta" : "job_search_field_job_organizatio",
    "index_id" : "job_search",
    "field" : "field_job_organization",
    "name" : "Job search: Organization",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "Organization",
      "display_more_link" : false,
      "more_limit" : 10,
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  $items['job_search_field_job_region_name'] = entity_import('search_api_facet', '{
    "delta" : "job_search_field_job_region_name",
    "index_id" : "job_search",
    "field" : "field_job_region:name",
    "name" : "Job search: Region \\u00bb Name",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "Region \\u00bb Name",
      "display_more_link" : false,
      "more_limit" : 10,
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  $items['job_search_field_job_skills_gene'] = entity_import('search_api_facet', '{
    "delta" : "job_search_field_job_skills_gene",
    "index_id" : "job_search",
    "field" : "field_job_skills_general:name",
    "name" : "Job search: Required general skills \\u00bb Name",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "Required general skills \\u00bb Name",
      "display_more_link" : false,
      "more_limit" : 10,
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  $items['job_search_field_job_skills_it_n'] = entity_import('search_api_facet', '{
    "delta" : "job_search_field_job_skills_it_n",
    "index_id" : "job_search",
    "field" : "field_job_skills_it:name",
    "name" : "Job search: Required IT skills \\u00bb Name",
    "enabled" : "1",
    "options" : {
      "limit" : 10,
      "min_count" : 1,
      "sort" : "count",
      "missing" : false,
      "default_true" : true,
      "ids_list" : [],
      "type" : "string",
      "field_name" : "Required IT skills \\u00bb Name",
      "display_more_link" : false,
      "more_limit" : 10,
      "show_active" : true
    },
    "rdf_mapping" : []
  }');
  return $items;
}

/**
 * Implementation of hook_default_search_api_index().
 */
function recruiter_job_search_default_search_api_index() {
  $items = array();
  $items['job_search'] = entity_import('search_api_index', '{
    "name" : "Job search",
    "machine_name" : "job_search",
    "description" : "Index for job nodes used by the recruiter distribution.",
    "server" : "solr_server",
    "entity_type" : "node",
    "options" : {
      "cron_limit" : "50",
      "fields" : {
        "search_api_language" : {
          "name" : "Item language",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 1
        },
        "search_api_fulltext_1" : {
          "name" : "Aggregated fulltext",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 1
        },
        "nid" : { "name" : "Node ID", "type" : "integer", "boost" : "1.0", "indexed" : 0 },
        "vid" : {
          "name" : "Revision ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "is_new" : { "name" : "Is new", "type" : "boolean", "boost" : "1.0", "indexed" : 0 },
        "type" : {
          "name" : "Content type",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 1
        },
        "title" : { "name" : "Title", "type" : "text", "boost" : "5.0", "indexed" : 0 },
        "language" : { "name" : "Language", "type" : "string", "boost" : "1.0", "indexed" : 0 },
        "url" : { "name" : "URL", "type" : "uri", "boost" : "1.0", "indexed" : 0 },
        "edit_url" : { "name" : "Edit URL", "type" : "uri", "boost" : "1.0", "indexed" : 0 },
        "status" : {
          "name" : "Published",
          "type" : "boolean",
          "boost" : "1.0",
          "indexed" : 1
        },
        "promote" : {
          "name" : "Promoted to frontpage",
          "type" : "boolean",
          "boost" : "1.0",
          "indexed" : 1
        },
        "sticky" : {
          "name" : "Sticky in lists",
          "type" : "boolean",
          "boost" : "1.0",
          "indexed" : 1
        },
        "created" : {
          "name" : "Date created",
          "type" : "date",
          "boost" : "1.0",
          "indexed" : 1
        },
        "changed" : {
          "name" : "Date changed",
          "type" : "date",
          "boost" : "1.0",
          "indexed" : 1
        },
        "log" : {
          "name" : "Revision log message",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "revision" : {
          "name" : "Creates revision",
          "type" : "boolean",
          "boost" : "1.0",
          "indexed" : 0
        },
        "comment" : {
          "name" : "Comments allowed",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "comment_count" : {
          "name" : "Comment count",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "comment_count_new" : {
          "name" : "New comment count",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_experience" : {
          "name" : "Years of experience",
          "type" : "decimal",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_job_organization" : {
          "name" : "Organization",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_job_workflow_state" : {
          "name" : "Workflow state",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_job_location" : { "name" : "Location", "type" : "text", "boost" : "1.0", "indexed" : 0 },
        "job_url" : { "name" : "Job URL", "type" : "uri", "boost" : "1.0", "indexed" : 0 },
        "field_crawler_deleted_jobs" : {
          "name" : "Deleted Jobs",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_crawler_new_jobs" : {
          "name" : "New jobs",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_crawler_process_time" : {
          "name" : "Last process time",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_crawler_status" : {
          "name" : "Status code",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_crawler_total_jobs" : {
          "name" : "Total jobs",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_crawler_active" : { "name" : "Active", "type" : "boolean", "boost" : "1.0", "indexed" : 0 },
        "field_crawler_flag_delete" : {
          "name" : "Mark for deletion",
          "type" : "boolean",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_crawler_last_job" : {
          "name" : "Last job created",
          "type" : "date",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_crawler_profile_id" : {
          "name" : "Profile id",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_crawler_web_harvest" : {
          "name" : "Web Harvest Configuration",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_link" : { "name" : "Link", "type" : "string", "boost" : "1.0", "indexed" : 0 },
        "author:uid" : {
          "name" : "Author \\u00bb User ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "author:name" : {
          "name" : "Author \\u00bb Name",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "author:mail" : {
          "name" : "Author \\u00bb Email",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "author:url" : {
          "name" : "Author \\u00bb URL",
          "type" : "uri",
          "boost" : "1.0",
          "indexed" : 0
        },
        "author:edit_url" : {
          "name" : "Author \\u00bb Edit URL",
          "type" : "uri",
          "boost" : "1.0",
          "indexed" : 0
        },
        "author:last_login" : {
          "name" : "Author \\u00bb Last login",
          "type" : "date",
          "boost" : "1.0",
          "indexed" : 0
        },
        "author:created" : {
          "name" : "Author \\u00bb Created",
          "type" : "date",
          "boost" : "1.0",
          "indexed" : 0
        },
        "author:roles" : {
          "name" : "Author \\u00bb User roles",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "body:value" : {
          "name" : "The main body text \\u00bb Text",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 1
        },
        "body:summary" : {
          "name" : "The main body text \\u00bb Summary",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "body:format" : {
          "name" : "The main body text \\u00bb Text format",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_occupational_field:tid" : {
          "name" : "Occupational fields \\u00bb Term ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_job_occupational_field:name" : {
          "name" : "Occupational fields \\u00bb Name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "2.0",
          "indexed" : 1
        },
        "field_job_occupational_field:description" : {
          "name" : "Occupational fields \\u00bb Description",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_occupational_field:weight" : {
          "name" : "Occupational fields \\u00bb Weight",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_occupational_field:node_count" : {
          "name" : "Occupational fields \\u00bb Node count",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_occupational_field:url" : {
          "name" : "Occupational fields \\u00bb URL",
          "type" : "list\\u003curi\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_of_study:tid" : {
          "name" : "Fields of study \\u00bb Term ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_of_study:name" : {
          "name" : "Fields of study \\u00bb Name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "2.0",
          "indexed" : 1
        },
        "field_job_of_study:description" : {
          "name" : "Fields of study \\u00bb Description",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_of_study:weight" : {
          "name" : "Fields of study \\u00bb Weight",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_of_study:node_count" : {
          "name" : "Fields of study \\u00bb Node count",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_of_study:url" : {
          "name" : "Fields of study \\u00bb URL",
          "type" : "list\\u003curi\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_general:tid" : {
          "name" : "Required general skills \\u00bb Term ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_general:name" : {
          "name" : "Required general skills \\u00bb Name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_job_skills_general:description" : {
          "name" : "Required general skills \\u00bb Description",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_general:weight" : {
          "name" : "Required general skills \\u00bb Weight",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_general:node_count" : {
          "name" : "Required general skills \\u00bb Node count",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_general:url" : {
          "name" : "Required general skills \\u00bb URL",
          "type" : "list\\u003curi\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_it:tid" : {
          "name" : "Required IT skills \\u00bb Term ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_it:name" : {
          "name" : "Required IT skills \\u00bb Name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_job_skills_it:description" : {
          "name" : "Required IT skills \\u00bb Description",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_it:weight" : {
          "name" : "Required IT skills \\u00bb Weight",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_it:node_count" : {
          "name" : "Required IT skills \\u00bb Node count",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_skills_it:url" : {
          "name" : "Required IT skills \\u00bb URL",
          "type" : "list\\u003curi\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_languages:tid" : {
          "name" : "Required languages \\u00bb Term ID",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_languages:name" : {
          "name" : "Required languages \\u00bb Name",
          "type" : "list\\u003cstring\\u003e",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_job_languages:description" : {
          "name" : "Required languages \\u00bb Description",
          "type" : "list\\u003ctext\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_languages:weight" : {
          "name" : "Required languages \\u00bb Weight",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_languages:node_count" : {
          "name" : "Required languages \\u00bb Node count",
          "type" : "list\\u003cinteger\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_languages:url" : {
          "name" : "Required languages \\u00bb URL",
          "type" : "list\\u003curi\\u003e",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_region:tid" : {
          "name" : "Region \\u00bb Term ID",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_region:name" : {
          "name" : "Region \\u00bb Name",
          "type" : "string",
          "boost" : "1.0",
          "indexed" : 1
        },
        "field_job_region:description" : {
          "name" : "Region \\u00bb Description",
          "type" : "text",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_region:weight" : {
          "name" : "Region \\u00bb Weight",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_region:node_count" : {
          "name" : "Region \\u00bb Node count",
          "type" : "integer",
          "boost" : "1.0",
          "indexed" : 0
        },
        "field_job_region:url" : {
          "name" : "Region \\u00bb URL",
          "type" : "uri",
          "boost" : "1.0",
          "indexed" : 0
        }
      },
      "data_alter_callbacks" : {
        "search_api_alter_bundle_filter" : {
          "status" : 0,
          "weight" : "0",
          "settings" : { "default" : "1", "bundles" : [] }
        },
        "search_api_alter_add_url" : { "status" : 0, "weight" : "0", "settings" : [] },
        "search_api_alter_add_aggregation" : {
          "status" : 1,
          "weight" : "0",
          "settings" : { "fields" : { "search_api_fulltext_1" : {
                "name" : "Aggregated fulltext",
                "fields" : {
                  "type" : "type",
                  "title" : "title",
                  "field_job_experience" : "field_job_experience",
                  "field_job_organization" : "field_job_organization",
                  "field_job_location" : "field_job_location",
                  "field_job_link" : "field_job_link",
                  "author:name" : "author:name",
                  "author:mail" : "author:mail",
                  "field_job_occupational_field:name" : "field_job_occupational_field:name",
                  "field_job_of_study:name" : "field_job_of_study:name",
                  "field_job_region:name" : "field_job_region:name",
                  "search_api_language" : 0,
                  "search_api_fulltext_1" : 0,
                  "nid" : 0,
                  "vid" : 0,
                  "is_new" : 0,
                  "language" : 0,
                  "url" : 0,
                  "edit_url" : 0,
                  "status" : 0,
                  "promote" : 0,
                  "sticky" : 0,
                  "created" : 0,
                  "changed" : 0,
                  "log" : 0,
                  "revision" : 0,
                  "comment" : 0,
                  "comment_count" : 0,
                  "comment_count_new" : 0,
                  "field_job_workflow_state" : 0,
                  "job_url" : 0,
                  "field_crawler_deleted_jobs" : 0,
                  "field_crawler_new_jobs" : 0,
                  "field_crawler_process_time" : 0,
                  "field_crawler_status" : 0,
                  "field_crawler_total_jobs" : 0,
                  "field_crawler_active" : 0,
                  "field_crawler_flag_delete" : 0,
                  "field_crawler_last_job" : 0,
                  "field_crawler_profile_id" : 0,
                  "field_crawler_web_harvest" : 0,
                  "author:uid" : 0,
                  "author:url" : 0,
                  "author:edit_url" : 0,
                  "author:last_login" : 0,
                  "author:created" : 0,
                  "author:roles" : 0,
                  "field_job_occupational_field:tid" : 0,
                  "field_job_occupational_field:description" : 0,
                  "field_job_occupational_field:weight" : 0,
                  "field_job_occupational_field:node_count" : 0,
                  "field_job_occupational_field:url" : 0,
                  "field_job_of_study:tid" : 0,
                  "field_job_of_study:description" : 0,
                  "field_job_of_study:weight" : 0,
                  "field_job_of_study:node_count" : 0,
                  "field_job_of_study:url" : 0,
                  "field_job_region:tid" : 0,
                  "field_job_region:description" : 0,
                  "field_job_region:weight" : 0,
                  "field_job_region:node_count" : 0,
                  "field_job_region:url" : 0
                },
                "type" : "fulltext"
              }
            }
          }
        }
      },
      "processors" : {
        "search_api_case_ignore" : { "status" : 0, "weight" : "0", "settings" : { "strings" : 0 } },
        "search_api_html_filter" : {
          "status" : 0,
          "weight" : "10",
          "settings" : {
            "title" : 0,
            "alt" : 0,
            "tags" : "h1 = 5\\r\\n                                                                                                                h2 = 3\\r\\n                                                                                                                h3 = 2\\r\\n                                                                                                                strong = 2\\r\\n                                                                                                                b = 2\\r\\n                                                                                                                em = 1.5\\r\\n                                                                                                                u = 1.5"
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
    "read_only" : "0",
    "rdf_mapping" : []
  }');
  return $items;
}
