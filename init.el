;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; File:         ~/.emacs.d/init.el
;;
;; Date Created: 2014-09-08
;;
;; Description:  Emacs org-mode config loader.
;;
;; Author:       Stephen Brennan
;;
;; Revision History:
;; Date        Change
;; ----        ------
;; 2014-09-08  Created as copy from ASUS config, with modifications.
;; 2014-10-21  Moved to a new, org-mode based configuration.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Useful for debugging, but awful during editing:
;(setq debug-on-error t)

(require 'org)

(defvar stemacs-dir (file-name-directory (or load-file-name (buffer-file-name)))
  "Code directory.")

(org-babel-load-file (expand-file-name "stemacs.org" stemacs-dir))
