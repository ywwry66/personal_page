(require 'org)
(require 'ox-publish)

;; (setq my-site-extra-head "<link rel='stylesheet' href='static/worg.css' />")
(setq org-publish-project-alist
      '(("blog"
         :components ("blog-content" "blog-static"))
        ("blog-content"
         :base-directory "./"
         :base-extension "org"
	 :exclude "readme.org"
         :publishing-directory "./public"
         :recursive t
         :publishing-function org-html-publish-to-html
	 
         ;; :export-with-tags nil
         :headline-levels 4             ; Just the default for this project.
         :with-toc nil
         :section-numbers nil
         ;; :sub-superscript nil
         ;; :todo-keywords nil
         ;; :author nil
         ;; :creator-info nil
	 :html-head "<link rel='stylesheet' href='static/worg.css' />"
         :html-preamble "<a href=\"index.html\">Home</a> <a href=\"teaching.html\">Teaching</a> <a href=\"research.html\">Research</a>"
         :html-postamble "<hrstyle=\"text-align: center;position: fixed;left: 0;bottom: 0;\">\n
<p style=\"text-align: center;position: fixed;left: 0;bottom: 0;\"> Made with org-mode </p>"
         ;; :style "This is raw html for stylesheet <link>'s"
         :timestamp t
         :exclude-tags ("noexport" "todo")
         :auto-preamble t)
        ("blog-static"
         :base-directory "./static"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|otf\\|jpeg"
         :publishing-directory "./public/static"
         :recursive t
         :publishing-function org-publish-attachment)))
