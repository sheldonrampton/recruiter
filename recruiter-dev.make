; Recruiter drush make build file for drupal.org packaging.
core = 7.x

api = 2

; Modules

projects[addressfield][version] = "1"

projects[admin_menu] = "3"

projects[autocomplete_deluxe][version] = "1.x-dev"

projects[ctools][version] = "1"

projects[colorbox][version] = "1"

projects[content_taxonomy][version] = "1.x-dev"

projects[context][version] = "3"

projects[date][version] = "2"

projects[diff][version] = "2"

projects[email][version] = "1"

projects[entity][version] = "1"

projects[entityreference][version] = "1"

projects[facetapi][version] = "1"

projects[features][version] = "1"

projects[field_collection][version] = "1"

projects[field_permissions][version] = "1"

projects[flag][version] = "2.x-dev"
projects[flag][download][type] = git
projects[flag][download][branch] = 7.x-2.x
projects[flag][download][revision] = d97949a81ce48c0ba9afcff8a6dd2c55352d4747
; Flag any entity http://drupal.org/node/1035410
projects[flag][patch][] = "http://drupal.org/files/flag_entity2_0.patch"
; Flag entity properties http://drupal.org/node/1315850
projects[flag][patch][] = "http://drupal.org/files/flag_entity_properties_0.patch"
; Flag Add views handler for flag entity links http://drupal.org/node/1362298
projects[flag][patch][] = "http://drupal.org/files/flag_views_entity_handler_1.patch"

projects[link][version] = "1"

projects[mailsystem] = "2"

projects[message] = "1"

projects[mimemail][version] = "1.x-dev"

projects[pathauto][version] = "1"

projects[profile2][version] = "1.x-dev"

projects[recruiter_features][version] = "1.x-dev"

projects[role_export][version] = "1"

projects[rules][version] = "2.x-dev"

projects[rules_autotag][version] = "1"

projects[rules_link][version] = "1.x-dev"

projects[search_api][version] = "1"

projects[search_api_saved_searches][version] = "1"

projects[search_api_solr][version] = "1.x-dev"

projects[search_api_db][version] = "1"

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
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
