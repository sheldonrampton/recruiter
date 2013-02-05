; Recruiter drush make build file for drupal.org packaging.
core = 7.x

api = 2

; Modules

projects[acl][version] = "1"

projects[addressfield][version] = "1"

projects[admin_menu] = "3"

projects[autocomplete_deluxe][version] = "2.x-dev"

projects[ctools][version] = "1"

projects[colorbox][version] = "1"

projects[content_access][version] = "1.x-dev"
; Node Access bug if core patch is applied http://drupal.org/node/1097248#comment-6613538
projects[content_access][patch][] = "http://drupal.org/files/1097248-content-access-node-grants-24.patch"

projects[context_admin][version] = "1.x-dev"

projects[content_taxonomy][version] = "1.x-dev"

projects[context][version] = "3"

projects[date][version] = "2"
; Make it possible to disable fieldset for date field http://drupal.org/node/1467712#comment-6137556
projects[date][patch][] = "http://drupal.org/files/date_option_render_as_regular_field-1467712-60.patch"

projects[diff][version] = "3"

projects[email][version] = "1"

projects[entity][version] = "1"

projects[entityreference][version] = "1"

projects[facetapi][version] = "1"

projects[facetapi_pretty_paths][version] = 1

projects[features][version] = "1"

projects[field_collection][version] = "1"
; EntityFieldQueryException: Unknown field when deleting fields http://drupal.org/node/1866032
projects[field_collection][patch][] = "http://drupal.org/files/fieldcol-1866032-7.patch"

projects[field_permissions][version] = "1"

projects[flag][version] = "3.x-dev"

projects[link][version] = "1.x-dev"

projects[message] = "1"

projects[panels][version] = "3"
; UUID for panels http://drupal.org/node/1277908#comment-6176512
projects[panels][patch][] = "http://drupal.org/files/panels-uuids_for_exported_objects-1277908-80.patch"
; i18n hooks http://drupal.org/node/1179034#comment-5664050
projects[panels][patch][] = "http://drupal.org/files/panels-add-hooks-to-integrate-i18n_panels-1179034-41.patch"

projects[pathauto][version] = "1"

projects[profile2][version] = "1.x-dev"
; Add ctools relationship
projects[profile2][patch][] = "http://drupal.org/files/1011370-profile2-ctools.patch"

; projects[recruiter_features][version] = "1.x-dev"

projects[recruiter_features][type] = module
projects[recruiter_features][download][type] = git
projects[recruiter_features][download][branch] = cloudy
projects[recruiter_features][download][url] = http://git.drupal.org/project/recruiter_features.git

projects[role_export][version] = "1"

projects[rules][version] = "2"

projects[rules_autotag][version] = "1"

projects[rules_link][version] = "1.x-dev"

projects[search_api][version] = "1"

projects[search_api_saved_searches][version] = "1"

projects[search_api_solr][version] = "1.x-dev"

projects[search_api_db][version] = "1.x-dev"

projects[strongarm][version] = "2"

projects[synonyms][version] = "1.x-dev"

projects[taxonomy_csv][version] = "5"

projects[taxonomy_manager][version] = "1"

projects[term_level][version] = "1"

projects[token][version] = "1"

projects[views][version] = "3"

projects[views_bulk_operations][version] = "3.x-dev"

projects[wysiwyg] = "2.x-dev"

;  -  Libraries  -

;Library for accessing solr servers
libraries[SolrPhpClient][download][type] = "get"
libraries[SolrPhpClient][download][url] = "http://solr-php-client.googlecode.com/files/SolrPhpClient.r60.2011-05-04.tgz"
libraries[SolrPhpClient][directory_name] = "SolrPhpClient"
libraries[SolrPhpClient][destination] = "modules/search_api_solr/"

; Also add the colorbox library.
libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "http://jacklmoore.com/colorbox/colorbox.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][destination] = "libraries"

; CKEditor
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.4/ckeditor_3.6.4.tar.gz"


;  - Recruiter Cloudy base theme -

projects[omega_tools] = 4

projects[block_class] = 1
; Features support http://drupal.org/node/1230234
projects[block_class][patch][] = "http://drupal.org/files/block_class.features-dev-24.patch"

projects[omega][type] = theme
projects[omega][version] = 4

projects[cloudy][type] = theme
; projects[cloudy][version] = 1

projects[cloudy][download][type] = git
projects[cloudy][download][branch] = 7.x-1.x
projects[cloudy][download][url] = http://git.drupal.org/project/recruiter_features.git

