;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; File:         ~/.emacs
;;
;; Date Created: 2014-09-08
;;
;; Description:  Emacs configuration file for D610 on Arch.
;;
;; Author:       Stephen Brennan
;;
;; Revision History:
;; Date        Change
;; ----        ------
;; 2014-09-08  Created as copy from ASUS config, with modifications.
;;
;; LIST OF INSTALLED PACKAGES (MELPA OR OTHERWISE)
;; -----------------------------------------------
;;
;; - solarized dark theme
;; - whitespace-mode
;; - tabbar-mode
;; - dired+
;; - projectile
;; - ecb
;; - yasnippet
;; - auto-complete
;; - CEDET (specifically, Semantic)
;; - nimrod-mode
;; - jinja2-mode
;; - markdown-mode
;; - haskell-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MELPA Archives
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq debug-on-error t)
(require 'org)

(defvar stemacs-dir (file-name-directory (or load-file-name (buffer-file-name)))
  "Code directory.")
(message "File to load: %s" (expand-file-name "stemacs.org" stemacs-dir))
(org-babel-load-file (expand-file-name "stemacs.org" stemacs-dir))

;;Unused

;; ;; Force dired to use the same buffer for directories.  Requires dired+.el.
;; (toggle-diredp-find-file-reuse-dir 1)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Helm
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Python
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (setq
;;  python-shell-interpreter "ipython"
;;  python-shell-interpreter-args ""
;;  python-shell-prompt-regexp "In \\[[0-9]+\\]: "
;;  python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
;;  python-shell-completion-setup-code
;;    "from IPython.core.completerlib import module_completion"
;;  python-shell-completion-module-string-code
;;    "';'.join(module_completion('''%s'''))\n"
;;  python-shell-completion-string-code
;;    "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Auto Complete
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; CompletionUI (disabled)
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ;;(add-to-list 'load-path "~/.emacs.d/completion-ui")
;; ;;(require 'completion-ui)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; CEDET STUFF
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ;; Global support for semantic
;; (add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)

;; ;; Enables context menu
;; (add-to-list 'semantic-default-submodes 'global-semantic-cedet-m3-minor-mode)

;; ;; Highlight first line of current tag (function/class/etc)
;; ;; (add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)

;; ;; Separate styles for tag decoration
;; ;;(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)

;; ;; Highlight names that are the same as the one under the cursor:
;; (add-to-list 'semantic-default-submodes
;;              'global-semantic-idle-local-symbol-highlight-mode)

;; ;; Automatic parsing of code in idle time
;; (add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)

;; ;; Displays name completions in idle time
;; ;;(add-to-list 'semantic-default-submodes
;; ;;             'global-semantic-idle-completions-mode)

;; ;; Displays information in idle time
;; (add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)

;; ;; Enable Semantic
;; (require 'semantic/ia)
;; (require 'semantic/bovine/gcc)
;; (semantic-mode 1)

;; ;; Add project roots
;; ;;(add-to-list 'semanticdb-project-roots "~/repos/libstephen")
;; ;;(add-to-list 'semanticdb-project-roots "~/repos/cky")

;; ;; Set the order semantic looks
;; (setq-mode-local cpp-mode semanticdb-find-default-throttle
;;                   '(local unloaded system recursive))
;; (setq-mode-local c-mode semanticdb-find-default-throttle
;;                   '(local unloaded system recursive))

;; ;; Add tags to imenu
;; (defun my-semantic-hook ()
;;   (imenu-add-to-menubar "TAGS"))
;; (add-hook 'semantic-init-hooks 'my-semantic-hook)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; MODE HOOKS
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ;; Functions

;; (defun my-c-mode-hook ()
;;   ;; Use AC + Semantic for completion.
;;   (add-to-list 'ac-sources 'ac-source-semantic-raw)
;;   (add-to-list 'ac-sources 'ac-source-semantic)

;;   (local-set-key (kbd "C-c j") 'semantic-ia-fast-jump)
;; )

;; (defun my-cpp-mode-hook ()
;;   ;; Use AC + Semantic for completion.
;;   (add-to-list 'ac-sources '(ac-source-semantic-raw))
;;   (add-to-list 'ac-sources '(ac-source-semantic))

;;   (local-set-key (kbd "C-c j") 'semantic-ia-fast-jump)
;; )

;; (defun my-vc-dir-mode-hook ()
;;   ;; Flymake mode allows for refresh, etc.
;;   (flymake-mode)
;;   )

;; (defun my-eww-mode-hook ()
;;   ;; Add the very logical shift-tab shortcut for previous link
;;   (local-set-key (kbd "<backtab>") 'shr-previous-link)
;;   )

;; (add-hook 'c-mode-common-hook 'my-c-mode-hook)
;; (add-hook 'cpp-mode-common-hook 'my-cpp-mode-hook)
;; (add-hook 'vc-dir-mode-hook 'my-vc-dir-mode-hook)
;; (add-hook 'my-eww-mode-hook 'eww-mode-hook)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ADDITIONAL MAJOR MODES
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ;; Nimrod mode: for nimrod programming language.
;; ;;(add-to-list 'load-path "~/.emacs.d/nimrod-mode")
;; (require 'nimrod-mode)

;; ;; CSharp Mode: for C#
;; ;;(add-to-list 'load-path "~/.emacs.d/csharp-mode")
;; ;;(require 'csharp-mode)

;; ;; Jinja2 Mode: for Flask/Jinja2 HTML templates
;; ;;(add-to-list 'load-path "~/.emacs.d/jinja2")
;; (require 'jinja2-mode)

;; ;; Markdown Mode
;; ;;(add-to-list 'load-path
;; ;;             "~/.emacs.d/markdown-mode")
;; (autoload 'markdown-mode "markdown-mode"
;;   "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

;; ;; Haskell-mode
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;; ;; AucTeX (for LaTeX):
;; (load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Settings from GUI
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.15639810426540285 . 0.2830188679245283) (ecb-sources-buffer-name 0.15639810426540285 . 0.22641509433962265) (ecb-methods-buffer-name 0.15639810426540285 . 0.3018867924528302) (ecb-history-buffer-name 0.15639810426540285 . 0.16981132075471697)))))
;;  '(ecb-options-version "2.40")
;;  '(ecb-source-path (quote ("~/repos/cky" "~/repos/libstephen")))
;;  '(inhibit-startup-screen t)
;;  '(preview-default-option-list (quote ("displaymath" "floats" "graphics" "sections" "footnotes"))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
