; ---------------------------------------------------------------------
; opi Drush Make File
; @author opi (opi@532pixel.com)
; Generated makefile from http://drushmake.me
;
; INTRUCTIONS
; drush make PATH/TO/opidrushmake.make SITE_DIRECTORY --force-complete
; ( more complete instructions in the README.txt file ) 
; ---------------------------------------------------------------------


; -----------
; API version
; -----------

api = 2


; ----
; Core
; ----

core = 7.x
projects[drupal][version] = 7


  
; -------
; Modules
; -------

; Base modules
projects[token][subdir] = "contrib"
projects[transliteration][subdir] = "contrib"

; Admin modules
projects[backup_migrate][subdir] = "contrib"
projects[admin_menu][subdir] = "contrib"
projects[wysiwyg][subdir] = "contrib"

; SEO
projects[globalredirect][subdir] = "contrib"
projects[pathauto][subdir] = "contrib"
projects[google_analytics][subdir] = "contrib"

; User Interface
projects[l10n_update][subdir] = "contrib"

; HTML5 Support
projects[elements][subdir] = "contrib"
projects[html5_tools][subdir] = "contrib"


  

;-------
; Themes
; ------

; Admin themes, we love Rubik !
projects[tao][subdir] = "contrib"
projects[rubik][subdir] = "contrib"

  
  
; ---------
; Libraries
; ---------

libraries[tinymce][download][type] = "file"
libraries[tinymce][download][url] = "http://github.com/downloads/tinymce/tinymce/tinymce_3.4.5.zip"



; --------
; Profiles
; --------

; Exemple
; Remove/Update when jobnet_profile is up
projects[opifullprofile][type] = "profile"
projects[opifullprofile][download][type] = "git"
projects[opifullprofile][download][url] = "git://github.com/opi/opiFullProfile.git"
projects[opifullprofile][download][branch] = "master"



