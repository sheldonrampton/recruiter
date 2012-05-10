; Recruiter drush make build file for drupal.org packaging.
core = 7.x

api = 2

; Modules

projects[addressfield][version] = "1.0-beta2"

projects[admin_menu] = "3.0-rc2"

projects[autocomplete_deluxe][download][type] = git
projects[autocomplete_deluxe][download][branch] = 7.x-1.x
projects[autocomplete_deluxe][download][revision] = a92b71e91208356b93a83525c695732b189d0653 

projects[ctools][version] = "1.0"

projects[colorbox][version] = "1.3"

projects[content_taxonomy][version] = "1.0-beta1"

projects[context][version] = "3.0-beta2"

projects[date][version] = "2.5"

projects[diff][version] = "2.0"

projects[email][version] = "1.0"

projects[entity][version] = "1.0-rc2"
; Incorrect invocation of hook_options_list() http://drupal.org/node/1556192
projects[entity][patch][] = "http://drupal.org/files/1556192-hook_options_list-invocation-1.patch"

projects[entityreference][version] = "1.0-rc1"

projects[facetapi][version] = "1.0-rc4"

projects[features][version] = "1.0-rc2"

projects[field_collection][version] = "1.0-beta4"

projects[field_permissions][version] = "1.0-beta2"

projects[flag][download][type] = git
projects[flag][download][branch] = 7.x-2.x
projects[flag][download][revision] = d97949a81ce48c0ba9afcff8a6dd2c55352d4747
; Flag any entity http://drupal.org/node/1035410
projects[flag][patch][] = "http://drupal.org/files/flag_entity2_0.patch"
; Flag entity properties http://drupal.org/node/1315850
projects[flag][patch][] = "http://drupal.org/files/flag_entity_properties_0.patch"
; Flag Add views handler for flag entity links http://drupal.org/node/1362298
projects[flag][patch][] = "http://drupal.org/files/flag_views_entity_handler_1.patch"

projects[link][version] = "1.0"

projects[mailsystem] = "2.34"

projects[message] = "1.3"

projects[mimemail] = 1.x-dev
projects[mimemail][download][type] = git
projects[mimemail][download][branch] = 7.x-1.x
projects[mimemail][download][revision] = 325981768d4553f5569fb7ac70949ac54cda1ef9 

projects[pathauto][version] = "1.0"

projects[profile2][version] = "1.2"

projects[recruiter_features][version] = "1.0-beta6"

projects[role_export][version] = "1.0"

projects[rules][version] = "2.1"

projects[rules_autotag][version] = "1.1"

projects[rules_link][download][type] = git
projects[rules_link][download][branch] = 7.x-1.x
projects[rules_link][download][revision] = cfa82d843c46c583ceca5a29bf2de97c92383c48

projects[search_api][version] = "1.0"

projects[search_api_saved_searches][version] = "1.0-beta5"

projects[search_api_solr][download][type] = git
projects[search_api_solr][download][branch] = 7.x-1.x
projects[search_api_solr][download][revision] = 8452317bba42de384f3127eccd8e19d63df2349c

projects[strongarm][version] = "2.0-rc1"

projects[synonyms][download][type] = git
projects[synonyms][download][branch] = 7.x-1.x
projects[synonyms][download][revision] = 949472be5d105f12d89350271e07e2c56e1a92f8 

projects[taxonomy_csv][version] = "5.10"

projects[taxonomy_manager][version] = "1.0-beta2"

projects[term_level][version] = "1.1"

projects[token][version] = "1.0"

projects[views][version] = "3.3"

projects[views_bulk_operations][download][type] = git
projects[views_bulk_operations][download][branch] = 7.x-3.x
projects[views_bulk_operations][download][revision] = 50be134537e7f7151d15670ee7d9e1099fb1f565

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
