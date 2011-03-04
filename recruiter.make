; recruiter profile make file
core = 7.x
api = 2

; For now use the latest dev version of some modules via Git.

projects[views][type] = module
projects[views][download][type] = git
projects[views][download][url] = git://git.drupalcode.org/project/views.git
projects[views][download][revision] = 2286174c385d4b17a6f5b1c7cb4ea03ef34e123d

projects[ctools][type] = module
projects[ctools][download][type] = git
projects[ctools][download][url] = git://git.drupalcode.org/project/ctools.git
projects[ctools][download][revision] = a83dce0a2f68c659fa9ef02533a774226d0e6e3f

projects[entity][type] = module
projects[entity][download][type] = git
projects[entity][download][url] = git://git.drupalcode.org/project/entity.git
projects[entity][download][revision] = 716409609c7a4019997fa4b664237930fa783808
; http://drupal.org/node/1077148 Entity-view Views row style.
projects[entity][patch][] = "http://drupal.org/files/issues/entity_row_plugin.patch"

projects[rules][type] = module
projects[rules][download][type] = git
projects[rules][download][url] = git://git.drupalcode.org/project/rules.git
projects[rules][download][revision] = 88011655cc0e3d967b27ba0d93564cf13ef35127

projects[profile2][type] = module
projects[profile2][download][type] = git
projects[profile2][download][url] = git://git.drupalcode.org/project/profile2.git
projects[profile2][download][revision] = 258bcf85091c9aff88d4c7e3e4ea88a5f4c87e0c

projects[features][type] = module
projects[features][download][type] = git
projects[features][download][url] = git://git.drupalcode.org/project/features.git
projects[features][download][revision] = e750731160fe65b18c7e06155a2d8a2f9125ca2c

projects[diff] = "2.0-beta2"
projects[strongarm] = "2.0-beta2"


projects[addressfield][type] = module
projects[addressfield][download][type] = git
projects[addressfield][download][url] = git://git.drupalcode.org/project/addressfield.git
projects[addressfield][download][revision] = c0f96ece6b0fc5fa2a7fdf25cf1f305f42aa81f3

projects[email][type] = module
projects[email][download][type] = git
projects[email][download][url] = git://git.drupalcode.org/project/email.git
projects[email][download][revision] = 03f7a94df173ebb9f9572c5e927dd52a91780015

projects[field_collection][type] = module
projects[field_collection][download][type] = git
projects[field_collection][download][url] = git://git.drupalcode.org/project/field_collection.git
projects[field_collection][download][revision] = 1e705e5c37414a1eb7b42d856ad778c0c9ce76e4

projects[search_api][type] = module
projects[search_api][download][type] = git
projects[search_api][download][url] = git://git.drupalcode.org/project/search_api.git
projects[search_api][download][revision] = 1fced8abe927cac7f3e2c0b7054a9c8e0a5834dc

projects[search_api_solr][type] = module
projects[search_api_solr][download][type] = git
projects[search_api_solr][download][url] = git://git.drupalcode.org/project/search_api_solr.git
projects[search_api_solr][download][revision] = e77b2b446e03d95e7219b7f43622da70dc3e0583


;Library for accessing solr servers
libraries[SolrPhpClient][download][type] = "get"
libraries[SolrPhpClient][download][url] = "http://solr-php-client.googlecode.com/files/SolrPhpClient.r22.2009-11-09.tgz"
libraries[SolrPhpClient][directory_name] = "SolrPhpClient"
libraries[SolrPhpClient][destination] = "modules/search_api_solr/"

projects[term_level][type] = module
projects[term_level][download][type] = git
projects[term_level][download][url] = git://git.drupalcode.org/project/term_level.git
projects[term_level][download][revision] = d082279ddd4d290e869ab3832d7e8cb825dd901f

projects[date][type] = module
projects[date][download][type] = git
projects[date][download][url] = git://git.drupalcode.org/project/date.git
projects[date][download][revision] = 283ad110c529b084603a3f17eeac49c516562f53

projects[link][type] = module
projects[link][download][type] = git
projects[link][download][url] = git://git.drupalcode.org/project/link.git
projects[link][download][revision] = 7.x-1.0-alpha3
; Add support hook_entity_property_info(), issue http://drupal.org/node/1079782.
projects[link][patch][] = "http://drupal.org/files/issues/link_entity_property_0.patch"

projects[taxonomy_csv][type] = module
projects[taxonomy_csv][download][type] = git
projects[taxonomy_csv][download][url] = git://git.drupalcode.org/project/taxonomy_csv.git
projects[taxonomy_csv][download][revision] = a878476af7ce2c5e7701f4a0c3c3757e44c408f9

projects[taxonomy_manager][type] = module
projects[taxonomy_manager][download][type] = git
projects[taxonomy_manager][download][url] = git://git.drupalcode.org/project/taxonomy_manager.git
projects[taxonomy_manager][download][revision] = 1507ca75275dd6dac8f8c3a5fa0a51c0e4d6362e

projects[message][type] = module
projects[message][download][type] = git
projects[message][download][url] = git://git.drupalcode.org/project/message.git
projects[message][download][revision] = 0cc7ecec904b1414183e1b8e8dd13e4fcc2878ad

projects[content_taxonomy][type] = module
projects[content_taxonomy][download][type] = git
projects[content_taxonomy][download][url] = git://git.drupalcode.org/project/content_taxonomy.git
projects[content_taxonomy][download][revision] = b28da805b18abaea38602bff467fbc11fe282153

projects[autocomplete_deluxe][type] = module
projects[autocomplete_deluxe][download][type] = git
projects[autocomplete_deluxe][download][url] = git://git.drupalcode.org/project/autocomplete_deluxe.git
projects[autocomplete_deluxe][download][revision] = 31e6c08dd95114310758b5db7d0b1922e4b15b9e

projects[colorbox][type] = module
projects[colorbox][download][type] = git
projects[colorbox][download][url] = git://git.drupalcode.org/project/colorbox.git
projects[colorbox][download][revision] = c650e65ff8fc155e7e1a050f1d166c5d6d74ca14

; Also add the colorbox library.
libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "http://colorpowered.com/colorbox/colorbox.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][destination] = "libraries"

; Crawler relevant modules.
projects[references][type] = module
projects[references][download][type] = git
projects[references][download][url] = git://git.drupalcode.org/project/references.git
projects[references][download][revision] = ac3e5256022c552fad487844b041f1a1f12c5f16

projects[wsclient][type] = module
projects[wsclient][download][type] = git
projects[wsclient][download][url] = git://git.drupalcode.org/project/wsclient.git
projects[wsclient][download][revision] = 6a09b2bb1cadfec95123740e773ddc6c607696a1

projects[http_client][type] = module
projects[http_client][download][type] = git
projects[http_client][download][url] = git://git.drupalcode.org/project/http_client.git
projects[http_client][download][revision] = 6e65667997ffe79172249b42a897cd81dd4ab510
projects[http_client][patch][] = "http://drupal.org/files/issues/722886-http_client-2xx.patch"

projects[restws][type] = module
projects[restws][download][type] = git
projects[restws][download][url] = git://git.drupalcode.org/project/restws.git
projects[restws][download][revision] = d608d3c168a96abf03c38fbef9d53688e642f651

projects[rules_autotag][type] = module
projects[rules_autotag][download][type] = git
projects[rules_autotag][download][url] = git://git.drupalcode.org/project/rules_autotag.git
projects[rules_autotag][download][revision] = 57d4c3300adee09909ab1e708c5b5a962e262fcd

projects[synonyms][type] = module
projects[synonyms][download][type] = git
projects[synonyms][download][url] = git://git.drupalcode.org/project/synonyms.git
projects[synonyms][download][revision] = 949472be5d105f12d89350271e07e2c56e1a92f8

projects[transformers][type] = module
projects[transformers][download][type] = git
projects[transformers][download][url] = git://git.drupalcode.org/project/transformers.git
projects[transformers][download][revision] = cb519b2cbaa1af02968f511ff05c8bc6365d72e0

