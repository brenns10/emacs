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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((company-clang-arguments "-Isrc/" "-Ilibstephen/inc/")
     (company-clang-arguments "-Iinc/")
     (company-clang-arguments "-I/home/stephen/repos/cky/libstephen/inc/" "-I/home/stephen/repos/cky/src/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setenv "SSH_AUTH_SOCK" "/home/stephen/ssh-agent.sock")
