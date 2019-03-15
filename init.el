;; Lazy monad emacs config

;;(setq debug-on-error t)

;; Ignore byte-compile warnings
;; because some shitty extensions has many of thouse
(setq after-init-time t)
(setq byte-compile-error-on-warn nil)
(setq byte-compile-warnings '(not free-vars
				  unresolved
				  noruntime
				  lexical
				  constants
				  suspicious
				  make-local
                                  callargs
                                  redefine
                                  obsolete
                                  noruntime
                                  cl-functions
                                  interactive-only
                                  ))



;; Hide widh to use mouse
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; init packages
(package-initialize)

;; No splash screen
(setq inhibit-startup-message t)

;; Return path of settings dir
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path settings-dir)

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (not (file-exists-p custom-file))
  (write-region "" nil custom-file))
		 
(load custom-file)




;; Setup elpa
(require 'setup-elpa)

;; Setup packages
(require 'setup-packages)

;; Load All Settings
(require 'appearance)

;; Load modes by file types
(require 'setup-modes)

;; Global coding params
(require 'setup-global-coding)

;; Yasnippet
(require 'setup-yasnippet)

;; ido-mode using vertical mode
(require 'setup-ido-mode)

;; Custom keys
(require 'setup-keys)
