; recruiter profile make file
core = 7.x
api = 2

;  -  Modules  -

; Main modules
projects[] = ctools

projects[entity][download][type] = git
projects[entity][download][branch] = 7.x-1.x

projects[] =field_collection
projects[] = profile2

projects[message][download][type] = git
projects[message][download][branch] = 7.x-1.x

projects[] = rules

projects[views][download][type] = git
projects[views][download][branch] = 7.x-3.x

; Features
projects[features][download][type] = git
projects[features][download][branch] = 7.x-1.x

projects[] = diff
projects[strongarm] = 2.x-dev

;Search API
projects[search_api][download][type] = git
projects[search_api][download][branch] = 7.x-1.x

; Fix errors during upgrade: http://drupal.org/node/1253320
projects[search_api][download][patch][] = "http://drupal.org/files/issues/search_api_fix_3.patch"


projects[search_api_solr][download][type] = git
projects[search_api_solr][download][branch] = 7.x-1.x

projects[search_api_saved_searches][download][type] = git 
projects[search_api_saved_searches][download][branch] = 7.x-1.x

;Field types
projects[] = addressfield
projects[] = email
projects[] = date
projects[] = references

projects[link][download][type] = git
projects[link][download][branch] = 7.x-1.x

projects[] = term_level

;Taxonomy utils
projects[] = taxonomy_csv
projects[] = taxonomy_manager
projects[] = content_taxonomy
projects[] = autocomplete_deluxe
projects[] = rules_autotag

projects[synonyms][download][type] = git
projects[synonyms][download][branch] = 7.x-1.x

;Web services
projects[wsclient] = 1.x-dev

projects[http_client][download][type] = git
projects[http_client][download][branch] = 7.x-2.x

projects[restws][download][type] = git
projects[restws][download][branch] = 7.x-1.x

;Misc
projects[colorbox][download][type] = git
projects[colorbox][download][branch] = 7.x-1.x

projects[rules_link][download][type] = git
projects[rules_link][download][branch] = 7.x-1.x

projects[field_permissions][download][type] = git
projects[field_permissions][download][branch] = 7.x-1.x

projects[flag][download][type] = git
projects[flag][download][branch] = 7.x-2.x
; Flag any entity http://drupal.org/node/1035410
projects[flag][patch][] = "http://drupal.org/files/flag_entity2_0.patch"
; Flag entity properties http://drupal.org/node/1315850
projects[flag][patch][] = "http://drupal.org/files/flag_entity_properties_0.patch"

projects[mimemail][download][type] = git
projects[mimemail][download][branch] = 7.x-1.x

;Recruiter Features
projects[recruiter_features][type] = module
projects[recruiter_features][download][type] = git
projects[recruiter_features][download][branch] = 7.x-1.x


;  -  Patches  -

; Rules Link permissions fix http://drupal.org/node/1270812
projects[rules_link][patch][] = "http://drupal.org/files/issues/rules_link_perm.patch"
; Rules Link hook_entity_view fix http://drupal.org/node/1273102
projects[rules_link][patch][] = "http://drupal.org/files/issues/rules_link_entity_view.patch"
 
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

