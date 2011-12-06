; recruiter profile make file
core = 7.x
api = 2

;  -  Modules  -

; Main modules
projects[ctools] = 1

projects[entity][download][type] = git
projects[entity][download][branch] = 7.x-1.x

projects[field_collection] = 1
projects[profile2] = 1
projects[context] = 3

projects[message][download][type] = git
projects[message][download][branch] = 7.x-1.x

projects[rules] = 2

projects[views][download][type] = git
projects[views][download][branch] = 7.x-3.x

projects[views_bulk_operations][download][type] = git
projects[views_bulk_operations][download][branch] = 7.x-3.x

; Features
projects[features][download][type] = git
projects[features][download][branch] = 7.x-1.x

projects[diff] = 2
projects[strongarm] = 2

;Search API
projects[search_api][download][type] = git
projects[search_api][download][branch] = 7.x-1.x

; Fix errors during upgrade: http://drupal.org/node/1253320
projects[search_api][download][patch][] = "http://drupal.org/files/issues/search_api_fix_3.patch"


projects[search_api_solr][download][type] = git
projects[search_api_solr][download][branch] = 7.x-1.x

projects[search_api_saved_searches] = 1

projects[facetapi] = 1

;Field types
projects[addressfield] = 1
projects[email] = 1
projects[date] = 2
projects[link] = 1
projects[term_level] = 1

projects[entityreference][download][type] = git
projects[entityreference][download][branch] = 7.x-1.x

;Taxonomy utils
projects[taxonomy_csv] = 5
projects[taxonomy_manager] = 1
projects[content_taxonomy] = 1
projects[autocomplete_deluxe] = 1
projects[rules_autotag] = 1

projects[synonyms] = 1.x-dev

;Misc
projects[colorbox] = 1

projects[rules_link][download][type] = git
projects[rules_link][download][branch] = 7.x-1.x

projects[field_permissions] = 1
projects[pathauto] = 1
projects[token] = 1

projects[flag][download][type] = git
projects[flag][download][branch] = 7.x-2.x
; Flag any entity http://drupal.org/node/1035410
projects[flag][patch][] = "http://drupal.org/files/flag_entity2_0.patch"
; Flag entity properties http://drupal.org/node/1315850
projects[flag][patch][] = "http://drupal.org/files/flag_entity_properties_0.patch"
; Flag Add views handler for flag entity links http://drupal.org/node/1362298
projects[flag][patch][] = "http://drupal.org/files/flag_views_entity_handler_0.patch"

projects[mailsystem] = 2

projects[mimemail] = 1.x-dev 

projects[role_export] = 1

;Recruiter Features
projects[recruiter_features][type] = module
projects[recruiter_features][download][type] = git
projects[recruiter_features][download][branch] = 7.x-1.x


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

