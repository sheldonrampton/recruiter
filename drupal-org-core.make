; Drupal core make file.

api = 2
core = 7.x

; Use drupal.org drupal via Git.
projects[drupal][type] = core
projects[drupal][download][type] = git
projects[drupal][download][url] = git://git.drupalcode.org/project/drupal.git
projects[drupal][download][revision] = 7.19

; CORE PATCHES

; node_access integrity constraint violation on module_invoke_all('node_' . $op, $node); http://drupal.org/node/1146244
; http://drupal.org/node/1146244#comment-6644078
projects[drupal][patch][] = http://drupal.org/files/1146244-82-node-save-on-insert.patch

; user_role_grant_permissions() throws PDOException when used for a disabled module's permission or with non-existent permissions
; http://drupal.org/node/737816#comment-6978566
; fixes integrity constraint violation when adding permissions, see http://drupal.org/node/1063204
http://drupal.org/files/drupal-7.x-fix_pdoexception_grant_permissions-737816-26-do-not-test.patch

