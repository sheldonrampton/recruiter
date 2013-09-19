; Recruiter drush make build file for drupal.org packaging.
core = 7.23

api = 2

; Modules

projects[acl][version] = "1.0"

projects[addressfield][version] = "1.0-beta4"

projects[admin_menu][version] = "3.0-rc4"

projects[autocomplete_deluxe][version] = "2.0-beta3"

projects[better_formats][version] = "1.0-beta1"

projects[ctools][version] = "1.3"

projects[colorbox][version] = "1.6"

projects[content_access][version] = "1.2-beta2"
; Node Access bug if core patch is applied http://drupal.org/node/1097248#comment-6613538
projects[content_access][patch][] = "http://drupal.org/files/1097248-content-access-node-grants-24.patch"

projects[context_admin][version] = "1.2"

projects[content_taxonomy][version] = "1.0-beta2"

projects[context][version] = "3.0-beta7"

projects[date][version] = "2.6"
; Make it possible to disable fieldset for date field http://drupal.org/node/1467712#comment-6137556
projects[date][patch][] = "http://drupal.org/files/date_option_render_as_regular_field-1467712-60.patch"

projects[diff][version] = "3.2"

projects[email][version] = "1.2"

projects[entity][version] = "1.2"

projects[entityreference][version] = "1.0"

projects[facetapi][version] = "1.3"

projects[facetapi_pretty_paths][version] = "1.0"

projects[features][version] = "1.0"
; Fixes import of menu links of disabled modules (http://drupal.org/node/1241108)
projects[features][patch][] = "http://drupal.org/files/1241108-d7-1.patch"

; Use the newer field collection version, which supports contexts for ctools.
projects[field_collection][version] = "1.x-dev"
projects[field_collection][download][type] = git
projects[field_collection][download][branch] = 7.x-1.x
projects[field_collection][download][revision] = 17d945fff4793dcd26cb8690ce82958f240b6dce
; EntityFieldQueryException: Unknown field when deleting fields http://drupal.org/node/1866032
projects[field_collection][patch][] = "http://drupal.org/files/fieldcol-1866032-7.patch"
; Field collection migration handler: http://drupal.org/node/1175082
projects[field_collection][patch][] = "http://drupal.org/files/field_collection-migrate-1175082-178.patch"

projects[field_permissions][version] = "1.0-beta2"

projects[flag][version] = "3.2"

projects[i18n][version] = "1.10"

projects[link][version] = "1.1"

projects[message][version] = "1.9"

projects[migrate][version] = "2.5"

projects[migrate_extras][version] = "2.5"

projects[panels][version] = "3.3"
; UUID for panels http://drupal.org/node/1277908#comment-6176512
projects[panels][patch][] = "http://drupal.org/files/panels-uuids_for_exported_objects-1277908-80.patch"
; i18n hooks http://drupal.org/node/1179034#comment-5664050
projects[panels][patch][] = "http://drupal.org/files/panels-add-hooks-to-integrate-i18n_panels-1179034-41.patch"
; Mini Panels Warnings https://drupal.org/node/1480366
projects[panels][patch][] = "https://drupal.org/files/panels-mini-panels-cache-1480366-5.patch"

projects[pathauto][version] = "1.2"

projects[pm_existing_pages][version] = "1.4"

projects[profile2][version] = "1.3"
; Add ctools relationship
projects[profile2][patch][] = "http://drupal.org/files/1011370-profile2-ctools.patch"

projects[recruiter_features][version] = "1.1"

projects[role_export][version] = "1.0"

projects[rules][version] = "2.5"

projects[rules_autotag][version] = "1.2"

projects[rules_link][version] = "1.0-beta5"

projects[search_api][version] = "1.8"

projects[search_api_saved_searches][version] = "1.2"

projects[search_api_solr][version] = "1.2"

projects[search_api_db][version] = "1.0-rc2"

projects[strongarm][version] = "2.0"

projects[synonyms][version] = "1.1"

projects[taxonomy_csv][version] = "5.10"

projects[taxonomy_formatter][version] = "1.4"
; Fix empty labels http://drupal.org/node/1352050#comment-7028512
projects[taxonomy_formatter][patch][] = "http://drupal.org/files/taxonomy_formatter-label-on-empty-1352050-9.patch"

projects[taxonomy_manager][version] = "1.0"

projects[term_level][version] = "1.2"

projects[token][version] = "1.5"

projects[variable][version] = "2.3"

projects[views][version] = "3.7"

projects[views_bulk_operations][version] = "3.1"

projects[wysiwyg][version] = "2.2"

;  -  Libraries  -

; Also add the colorbox library.
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.3.34.zip"
libraries[colorbox][download][type] = "get"
; jquery.colorbox.js should be under libraries/colorbox/colorbox
libraries[colorbox][destination] = "libraries/colorbox"

; CKEditor
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.1/ckeditor_3.6.6.1.zip"


;  - Recruiter Cloudy base theme -

projects[block_class][version] = 1.3

projects[omega][type] = theme
projects[omega][version] = "4.0-rc1"

projects[cloudy][type] = theme
projects[cloudy][version] = "1.3"

