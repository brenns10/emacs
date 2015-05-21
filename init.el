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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Useful for debugging, but awful during editing:
;(setq debug-on-error t)

;; Need org mode for babel
(require 'org)
;; Need package for package management.
(require 'package)
;; Need cl because some packages load with errors otherwise :(
(require 'cl)

;; Get the emacs directory (same directory as this file).
(defvar emacs-dir (file-name-directory (or load-file-name (buffer-file-name)))
  "Code directory.")

;; Initialize the package manager!
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; This function will install a package if not already installed.
(defun require-package (package-list)
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package))))

;; Fetch the list of packages available (only if the package list isn't built)
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;; This function will load an org mode file in this directory.
(defun load-org-init-file (filename)
  (org-babel-load-file (expand-file-name filename emacs-dir)))

;; This function checks if a filename is an org mode file.
(defun is-org-file-p (name)
  (and (> (length name) 3) (string= ".org" (substring name -4))))

;; Load all org-mode init files in this directory!!
(dolist (file (directory-files-and-attributes emacs-dir))
  (when (is-org-file-p (car file))
    (load-org-init-file (car file))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; BEGIN AUTO-GENERATED SETTINGS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
