; Recruiter drush make build file for drupal.org packaging.
core = 7.14

api = 2

; Modules

projects[views_bulk_operations][download][type] = git
projects[views_bulk_operations][download][branch] = 7.x-3.x
projects[views_bulk_operations][download][revision] = 50be134537e7f7151d15670ee7d9e1099fb1f565

projects[addressfield][version] = "1.0-beta2"

projects[autocomplete_deluxe][download][type] = git
projects[autocomplete_deluxe][download][branch] = 7.x-1.x
projects[autocomplete_deluxe][download][revision] = a92b71e91208356b93a83525c695732b189d0653 

projects[ctools][version] = "1.0"

projects[colorbox][version] = "1.3"

projects[content_taxonomy][version] = "1.0-beta1"

projects[context][version] = "3.0-beta2"

projects[facetapi][version] = "1.0-rc4"

projects[date][version] = "2.5"

projects[email][version] = "1.0"

projects[entity][version] = "1.0-rc2"

projects[features][version] = "1.0-rc2"

projects[field_collection][version] = "1.0-beta4"

projects[field_permissions][version] = "1.0-beta2"

projects[flag][download][type] = git
projects[flag][download][branch] = 7.x-2.x
projects[flag][download][revision] = d97949a81ce48c0ba9afcff8a6dd2c55352d4747
projects[flag][patch][] = "http://drupal.org/files/flag_views_entity_handler_1.patch"

projects[link][version] = "1.0"

projects[profile2][version] = "1.2"

projects[recruiter_features][download][type] = git
projects[recruiter_features][download][branch] = 7.x-1.x 
projects[recruiter_features][download][revision] = 6cd272c9eed5f208777f90d7fb95f147c4ecd22d

projects[role_export][version] = "1.0"

projects[rules][version] = "2.1"

projects[rules_link][download][type] = git
projects[rules_link][download][branch] = 7.x-1.x
projects[rules_link][download][revision] = cfa82d843c46c583ceca5a29bf2de97c92383c48

projects[search_api][version] = "1.0"

projects[search_api_saved_searches][version] = "1.0-beta5"

projects[search_api_solr][download][type] = git
projects[search_api_solr][download][branch] = 7.x-1.x
projects[search_api_solr][download][revision] = 8452317bba42de384f3127eccd8e19d63df2349c

projects[strongarm][version] = "2.0-rc1"

projects[taxonomy_manager][version] = "1.0-beta2"

projects[term_level][download][type] = git
projects[term_level][download][branch] = 7.x-1.x
projects[term_level][download][revision] = 7f4bd03d0524aef585b10a987b27f7e4f6c6bc08

projects[views][version] = "3.3"
