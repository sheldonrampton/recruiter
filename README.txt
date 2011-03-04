
--------------------------------------------------------------------------------
                     Recruiter Drupal distribution
--------------------------------------------------------------------------------

This is an installation profile for building a Drupal based e-recruitment
platform. Users can register either as recruiter and post job classifieds or
they can register as applicants and fill out their resume. A faceted search
helps users to find jobs and possible job candidates.

More details at 

 *  http://drupal.org/project/recruiter or
 *  http://epiqo.com/recruiter

Maintained by epiqo, see http://epiqo.com.


Requirements
------------

Recruiter is distributed with a .make file and one .profile file. The .make file
defines what packages that must be downloaded and the .profile file is
responsible for configuring all those modules.

Befor building the recruiter distribution you need three things:

 * Drush (http://drupal.org/project/drush)
 * Drush Make (http://drupal.org/project/drush_make)
 * Apache Solr (http://lucene.apache.org/solr/)

For instructions on how to install those packages, please consult their
respective documentation.


Installation
------------

1. Download and extract the Recruiter installation profile from

   http://drupal.org/project/recruiter

2. Change to the downloaded folder and run the build script with parameter "3"
   to build the stable distribution.

   cd recruiter
   ./rebuild.sh 3

3. Move the newly created "recruiter" subfolder to your webroot and configure
   your webserver accordingly.

4. Install Recruiter as a usual Drupal site by visitting it with your
   webbrowser. Select the "recruiter" installation profile and follow the usual
   Drupal installation instructions (i.e. Drupal's INSTALL.txt in the webroot
   subfolder).

5. Apache Solr is required for the job and resume searches, you can configure it
   in the Drupal administration pages at
 
          "admin/config/search/search_api/server/solr_server/edit"

6. Configure your private file system path as usual at

          "admin/config/media/file-system"


Features
--------

The distribution makes use of the following feature modules:

* recruiter_common: Foundational components for the Recruiter distribution.
* recruiter_register: Allow users to register as recruiter or applicant.
* recruiter_job: Allows recruiteres to create and manage jobs.
* recruiter_job_search: Provides a job search.
* recruiter_resume: Allow applicants to create a resume.
* recruiter_resume_search: Provides a resume search.
* recruiter_search: Common components for searching.

