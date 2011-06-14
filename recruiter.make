; recruiter profile make file
core = 7.x
api = 2

;  -  Modules  -

; Main modules
projects[ctools] = 1.0-beta1

projects[entity][download][type] = git
projects[entity][download][revision] = 7d0730d972a6d5e4cc4e0eb08b3bc937ac7a9721

projects[field_collection][download][type] = git
projects[field_collection][download][revision] = 66e162485611c3b726cc6e925d594c8cb8e1a3b2

projects[profile2] = 1.0-beta3

projects[message][download][type] = git
projects[message][download][revision] = 45d68df7ed5648c1cebd32dd75725fe61dddd433

projects[rules][download][type] = git
projects[rules][download][revision] = 0d01006c07f8aa3daeddd378f19f7af88c0921f6

projects[views][download][type] = git
projects[views][download][revision] = fce85743ba542ef96a288f11755bf230b78311c2

; Features
projects[features][download][type] = git
projects[features][download][revision] = 954c04de4ee91d7ee9636bbc1017757028b81aa9

projects[diff] = 2.0-beta2
projects[strongarm] = 2.0-beta2

;Search API
projects[search_api][download][type] = git
projects[search_api][download][revision] = 4ddae19450776b61c920058dae37ebc2f19660f6

projects[search_api_solr][download][type] = git
projects[search_api_solr][download][revision] = d6307679050949b871a4e25c8bc62bea84b3f9e0

projects[search_api_saved_searches][download][type] = git 
projects[search_api_saved_searches][download][revision] = 2a26a9ade614b6191ac14d3a46c7e0d49833f26d

;Field types
projects[addressfield] = 1.0-alpha4
projects[email] = 1.0-beta1
projects[date] = 2.0-alpha3
projects[references] = 2.0-beta3

projects[link][download][type] = git
projects[link][download][revision] = da9b09a2ed42f3dfb8e2d8c6556aeed72049a75b

projects[term_level][download][type] = git
projects[term_level][download][revision] = d082279ddd4d290e869ab3832d7e8cb825dd901f

;Taxonomy utils
projects[autocomplete_deluxe] = 1.0-beta1
projects[taxonomy_csv] = 5.6
projects[taxonomy_manager] = 1.0-beta1

projects[content_taxonomy][download][type] = git
projects[content_taxonomy][download][revision] = c7277bc260c0bafada9819e8a468572369c10df9

projects[rules_autotag][download][type] = git
projects[rules_autotag][download][revision] = 57d4c3300adee09909ab1e708c5b5a962e262fcd

projects[synonyms][download][type] = git
projects[synonyms][download][revision] = 949472be5d105f12d89350271e07e2c56e1a92f8

;Web services
projects[wsclient] = 1.0-alpha3

projects[http_client][download][type] = git
projects[http_client][download][revision] = 6e65667997ffe79172249b42a897cd81dd4ab510

projects[restws][download][type] = git
projects[restws][download][revision] = 5942a8d85e20727822e58cbadab1bdc0be5b7659

projects[transformers][download][type] = git
projects[transformers][download][revision] = cb519b2cbaa1af02968f511ff05c8bc6365d72e0

;Misc
projects[colorbox][download][type] = git
projects[colorbox][download][revision] = 934e68429eb974bc20e583932a3f89103f147837

;  -  Patches  -

; http://drupal.org/node/1157048
; Feature-packages appear overridden when they are not
projects[features][patch][] = "http://drupal.org/files/issues/features-code-generation-fail-1157048-16.patch"

; http://drupal.org/node/1077148
; Entity-view Views row style.
projects[entity][patch][] = "http://drupal.org/files/issues/entity_row_plugin.patch"

; http://drupal.org/node/1079782
; Add support hook_entity_property_info().
projects[link][patch][] = "http://drupal.org/files/issues/1079782-link-entity_property-7.patch"

; http://drupal.org/node/722886
; Do not throw exception for 1XX and 2XX status code
projects[http_client][patch][] = "http://drupal.org/files/issues/722886-http_client-2xx.patch"

 
;  -  Libraries  -

;Library for accessing solr servers
libraries[SolrPhpClient][download][type] = "get"
libraries[SolrPhpClient][download][url] = "http://solr-php-client.googlecode.com/files/SolrPhpClient.r22.2009-11-09.tgz"
libraries[SolrPhpClient][directory_name] = "SolrPhpClient"
libraries[SolrPhpClient][destination] = "modules/search_api_solr/"

; Also add the colorbox library.
libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "http://colorpowered.com/colorbox/colorbox.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][destination] = "libraries"

