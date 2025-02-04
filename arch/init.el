;; CUSTOM SETTINGS

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wombat))
 '(custom-safe-themes
   '("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" default))
 '(package-selected-packages
   '(counsel evil-collection evil markdown-mode poly-markdown quarto-mode emmsto-char emms elfeed org-modern org-bullets vterm smart-mode-line-powerline-theme smart-mode-line julia-repl enlight dashboard solarized-theme zotelo pdf-tools auctex julia-mode))
 '(scroll-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "SourceCodeVF" :foundry "ADBO" :slant normal :weight regular :height 202 :width normal)))))



;; Basic Cleanup

(tool-bar-mode   -1)
(menu-bar-mode   -1)
(scroll-bar-mode -1)
(set-fringe-mode 10)


;; General settings

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4) ;; tab spacing 4
(setq indent-line-function 'insert-tab)

;; Specific settings for text-mode
(add-hook 'text-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)              ;; Disable tabs in text-mode
            (setq tab-width 4)                       ;; Set tab width to 4 spaces
            (setq indent-line-function 'indent-relative)))  ;; Use relative indentation



;; Evil Mode

(require 'evil)
(evil-mode 1)

(setq select-enable-clipboard t) ;; Yanking and pasting using system clipboard
(setq select-enable-primary t)

(setq evil-kill-on-visual-line t)
(setq evil-want-keybinding 0)
(require 'evil-collection)
(evil-collection-init)

(setq evil-want-shift-selection t) ;; enable shift selection in evil mode.

(define-key evil-insert-state-map (kbd "C-a") 'mark-whole-buffer) ;; Select all in evil mode

;; line numbers
(global-display-line-numbers-mode 1) 

;; add the themes directory to path

(add-to-list 'custom-theme-load-path (concat (file-truename user-emacs-directory)
                                             "themes"))

;; Set theme to solarized
(load-theme 'solarized-dark t)
;;(load-theme 'fiendscheme t)

;; smart mode line
(sml/setup)

;; Org Mode settings

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


;; Scratch dashboard when opening emacsclient

(setq initial-scratch-message " ")



;; splash image

(defun always-use-fancy-splash-screens-p () 1) ;; Always use fancy splash screen
(defalias 'use-fancy-splash-screens-p 'always-use-fancy-splash-screens-p) ;; Always use the fancy splash screen

(setq fancy-splash-image "~/.emacs.d/emacs-e.svg")

(defconst fancy-startup-text
  `((:face
  (variable-pitch font-lock-comment-face)
  "Welcome to GNU Emacs" ))
  )


(require 'package)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))



;; julia settings

(require 'julia-mode)
(add-to-list 'load-path "~/.juliaup/bin/julia")
(require 'julia-repl)
(add-hook 'julia-mode-hook 'julia-repl-mode)

;; LaTeX Settings

(unless (package-installed-p 'auctex)
  (package-install 'auctex))

(require 'tex)

(push (list 'output-pdf "Okular") TeX-view-program-selection)

;; Set shell mode to bash

(setq explicit-shell-file-name "/usr/bin/bash")
(setq shell-file-name "bash")
(defun bash-shell-mode-setup ()
  (setq-local comint-process-echoes t))
(add-hook 'shell-mode-hook #'bash-shell-mode-setup)

;; Quarto

(require 'quarto-mode)


;; Elfeed

(setq elfeed-feeds
      '("https://www.archlinux.org/feeds/news/"
        "https://www.livechart.me/feeds/episodes"
        "https://odysee.com/$/rss/@AlphaNerd:8"
        "https://odysee.com/$/rss/@BrodieRobertson:5"))

;; Emms

(emms-all)
(setq emms-player-list '(emms-player-mpv)
      emms-info-functions '(emms-info-native))


