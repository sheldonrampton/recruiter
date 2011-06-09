; recruiter profile make file
core = 7.x
api = 2

; For now use the latest dev version of some modules via Git.

projects[views][type] = module
projects[views][download][type] = git
projects[views][download][url] = git://git.drupalcode.org/project/views.git
projects[views][download][branch] = 7.x-3.x

projects[ctools][type] = module
projects[ctools][download][type] = git
projects[ctools][download][url] = git://git.drupalcode.org/project/ctools.git
projects[ctools][download][branch] = 7.x-1.x

projects[entity][type] = module
projects[entity][download][type] = git
projects[entity][download][url] = git://git.drupalcode.org/project/entity.git
projects[entity][download][branch] = 7.x-1.x
; http://drupal.org/node/1077148 Entity-view Views row style.
projects[entity][patch][] = "http://drupal.org/files/issues/entity_row_plugin.patch"

projects[rules][type] = module
projects[rules][download][type] = git
projects[rules][download][url] = git://git.drupalcode.org/project/rules.git
projects[rules][download][branch] = 7.x-2.x

projects[profile2][type] = module
projects[profile2][download][type] = git
projects[profile2][download][url] = git://git.drupalcode.org/project/profile2.git
projects[profile2][download][branch] = 7.x-1.x

projects[features][type] = module
projects[features][download][type] = git
projects[features][download][url] = git://git.drupalcode.org/project/features.git
projects[features][download][branch] = 7.x-1.x

projects[diff] = "2.0-beta2"
projects[strongarm] = "2.0-beta2"


projects[addressfield][type] = module
projects[addressfield][download][type] = git
projects[addressfield][download][url] = git://git.drupalcode.org/project/addressfield.git

projects[email][type] = module
projects[email][download][type] = git
projects[email][download][url] = git://git.drupalcode.org/project/email.git
projects[email][download][branch] = 7.x-1.x

projects[field_collection][type] = module
projects[field_collection][download][type] = git
projects[field_collection][download][url] = git://git.drupalcode.org/project/field_collection.git
projects[field_collection][download][branch] = 7.x-1.x

projects[search_api][type] = module
projects[search_api][download][type] = git
projects[search_api][download][url] = git://git.drupalcode.org/project/search_api.git
projects[search_api][download][branch] = 7.x-1.x

projects[search_api_solr][type] = module
projects[search_api_solr][download][type] = git
projects[search_api_solr][download][url] = git://git.drupalcode.org/project/search_api_solr.git
projects[search_api_solr][download][branch] = 7.x-1.x


;Library for accessing solr servers
libraries[SolrPhpClient][download][type] = "get"
libraries[SolrPhpClient][download][url] = "http://solr-php-client.googlecode.com/files/SolrPhpClient.r22.2009-11-09.tgz"
libraries[SolrPhpClient][directory_name] = "SolrPhpClient"
libraries[SolrPhpClient][destination] = "modules/search_api_solr/"

projects[search_api_saved_searches][type] = module
projects[search_api_saved_searches][download][type] = git
projects[search_api_saved_searches][download][url] = git://git.drupalcode.org/project/search_api_saved_searches.git
projects[search_api_saved_searches][download][branch] = 7.x-1.x

projects[term_level][type] = module
projects[term_level][download][type] = git
projects[term_level][download][url] = git://git.drupalcode.org/project/term_level.git
projects[term_level][download][branch] = 7.x-1.x

projects[date][type] = module
projects[date][download][type] = git
projects[date][download][url] = git://git.drupalcode.org/project/date.git
projects[date][download][branch] = 7.x-2.x

projects[link][type] = module
projects[link][download][type] = git
projects[link][download][url] = git://git.drupalcode.org/project/link.git
projects[link][download][branch] = 7.x-1.x
; Add support hook_entity_property_info(), issue http://drupal.org/node/1079782.
projects[link][patch][] = "http://drupal.org/files/issues/1079782-link-entity_property-7.patch"

projects[taxonomy_csv][type] = module
projects[taxonomy_csv][download][type] = git
projects[taxonomy_csv][download][url] = git://git.drupalcode.org/project/taxonomy_csv.git
projects[taxonomy_csv][download][branch] = master

projects[taxonomy_manager][type] = module
projects[taxonomy_manager][download][type] = git
projects[taxonomy_manager][download][url] = git://git.drupalcode.org/project/taxonomy_manager.git
projects[taxonomy_manager][download][branch] = 7.x-1.x

projects[message][type] = module
projects[message][download][type] = git
projects[message][download][url] = git://git.drupalcode.org/project/message.git
projects[message][download][branch] = 7.x-1.x

projects[content_taxonomy][type] = module
projects[content_taxonomy][download][type] = git
projects[content_taxonomy][download][url] = git://git.drupalcode.org/project/content_taxonomy.git
projects[content_taxonomy][download][branch] = 7.x-1.x

projects[autocomplete_deluxe][type] = module
projects[autocomplete_deluxe][download][type] = git
projects[autocomplete_deluxe][download][url] = git://git.drupalcode.org/project/autocomplete_deluxe.git
projects[autocomplete_deluxe][download][branch] = 7.x-1.x

projects[colorbox][type] = module
projects[colorbox][download][type] = git
projects[colorbox][download][url] = git://git.drupalcode.org/project/colorbox.git
projects[colorbox][download][branch] = 7.x-1.x

; Also add the colorbox library.
libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "http://colorpowered.com/colorbox/colorbox.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][destination] = "libraries"

; Crawler relevant modules.
projects[references][type] = module
projects[references][download][type] = git
projects[references][download][url] = git://git.drupalcode.org/project/references.git
projects[references][download][branch] = 7.x-2.x

projects[wsclient][type] = module
projects[wsclient][download][type] = git
projects[wsclient][download][url] = git://git.drupalcode.org/project/wsclient.git
projects[wsclient][download][branch] = 7.x-1.x

projects[http_client][type] = module
projects[http_client][download][type] = git
projects[http_client][download][url] = git://git.drupalcode.org/project/http_client.git
projects[http_client][download][branch] = 7.x-2.x
projects[http_client][patch][] = "http://drupal.org/files/issues/722886-http_client-2xx.patch"

projects[restws][type] = module
projects[restws][download][type] = git
projects[restws][download][url] = git://git.drupalcode.org/project/restws.git
projects[restws][download][branch] = 7.x-1.x

projects[rules_autotag][type] = module
projects[rules_autotag][download][type] = git
projects[rules_autotag][download][url] = git://git.drupalcode.org/project/rules_autotag.git
projects[rules_autotag][download][branch] = 7.x-1.x

projects[synonyms][type] = module
projects[synonyms][download][type] = git
projects[synonyms][download][url] = git://git.drupalcode.org/project/synonyms.git
projects[synonyms][download][branch] = 7.x-1.x

projects[transformers][type] = module
projects[transformers][download][type] = git
projects[transformers][download][url] = git://git.drupalcode.org/project/transformers.git
projects[transformers][download][branch] = 7.x-1.x

