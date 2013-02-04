; Recruiter drush make build file for drupal.org packaging.
core = 7.19

api = 2

; Modules

projects[acl][version] = "1.0"

projects[addressfield][version] = "1.0-beta3"

projects[admin_menu] = "3.0-rc3"

projects[autocomplete_deluxe][version] = "2.x-dev"
projects[autocomplete_deluxe][download][type] = git
projects[autocomplete_deluxe][download][branch] = 7.x-2.x
projects[autocomplete_deluxe][download][revision] = 0dfeff8243e42846f86a91386d08b07c55ad4511

projects[ctools][version] = "1.2"

projects[colorbox][version] = "1.4"

projects[content_access][version] = "1.x-dev"
; Node Access bug if core patch is applied http://drupal.org/node/1097248#comment-6613538
projects[content_access][patch][] = "http://drupal.org/files/1097248-content-access-node-grants-24.patch"

projects[context_admin][version] = "1.x-dev"
projects[context_admin][download][type] = git
projects[context_admin][download][branch] = 7.x-1.x
projects[context_admin][download][revision] = 15a8390e12805761d02d2bba84adfd2796a0a207

projects[content_taxonomy][version] = "1.x-dev"
projects[content_taxonomy][download][type] = git
projects[content_taxonomy][download][branch] = 7.x-1.x
projects[content_taxonomy][download][revision] = f3ad6dc33629ec33db58aaee678fab26967349bb

projects[context][version] = "3.0-beta6"

projects[date][version] = "2.6"
; Make it possible to disable fieldset for date field http://drupal.org/node/1467712#comment-6137556
projects[date][patch][] = "http://drupal.org/files/date_option_render_as_regular_field-1467712-60.patch"

projects[diff][version] = "2.0"

projects[email][version] = "1.2"

projects[entity][version] = "1.0"

projects[entityreference][version] = "1.0"

projects[facetapi][version] = "1.2"

projects[facetapi_pretty_paths][version] = "1.0-beta1"

projects[features][version] = "1.0"

projects[field_collection][version] = "1.0-beta5"
; EntityFieldQueryException: Unknown field when deleting fields http://drupal.org/node/1866032
projects[field_collection][patch][] = "http://drupal.org/files/fieldcol-1866032-7.patch"

projects[field_permissions][version] = "1.0-beta2"

projects[flag][version] = "3.0-alpha4"
; Flag entity properties http://drupal.org/node/1315850
projects[flag][patch][] = "http://drupal.org/files/1315850-entity_api_properties-7.patch"
; DEPRECATED (Job search uses teaser view since RC2).
; Flag Add views handler for flag entity links http://drupal.org/node/1362298
projects[flag][patch][] = "http://drupal.org/files/1362298_independent_query_backend_flag_links-13.patch"

projects[link][version] = "1.0"

projects[message] = "1.7"

projects[panels][version] = "3.3"
; UUID for panels http://drupal.org/node/1277908#comment-6176512
projects[panels][patch][] = "http://drupal.org/files/panels-uuids_for_exported_objects-1277908-80.patch"
; i18n hooks http://drupal.org/node/1179034#comment-5664050
projects[panels][patch][] = "http://drupal.org/files/panels-add-hooks-to-integrate-i18n_panels-1179034-41.patch"

projects[pathauto][version] = "1.2"

projects[profile2][version] = "1.3"
; Add ctools relationship
projects[profile2][patch][] = "http://drupal.org/files/1011370-profile2-ctools.patch"

projects[recruiter_features][version] = "1.0-rc3"

projects[role_export][version] = "1.0"

projects[rules][version] = "2.2"

projects[rules_autotag][version] = "1.1"

projects[rules_link][version] = "1.0-beta4"

projects[search_api][version] = "1.4"

projects[search_api_saved_searches][version] = "1.x-dev"
projects[search_api_saved_searches][download][type] = git
projects[search_api_saved_searches][download][branch] = 7.x-1.x
projects[search_api_saved_searches][download][revision] = d488038ee9950da087b8527e14abd59f3dda69ec

projects[search_api_solr][version] = "1.0-rc3"

projects[search_api_db][version] = "1.0-beta4"

projects[strongarm][version] = "2.0"

projects[synonyms][version] = "1.1"

projects[taxonomy_csv][version] = "5.10"

projects[taxonomy_manager][version] = "1.0-rc1"

projects[term_level][version] = "1.1"

projects[token][version] = "1.4"

projects[views][version] = "3.5"

projects[views_bulk_operations][version] = "3.1"

projects[wysiwyg][version] = "2.2"

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
