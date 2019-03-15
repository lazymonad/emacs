;; Install extensions if they're missing
(defun init--install-packages ()
  (packages-install
   '(
     markdown-mode
     php-mode
     clojure-mode
     multi-web-mode
     web-mode
     apache-mode
     autopair
     js2-mode
     css-mode
     expand-region ;; C-@
     spacemacs-theme
     ido-vertical-mode
     move-text
     smex
     yasnippet
     )))

;; Install
(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

(provide 'setup-packages)
