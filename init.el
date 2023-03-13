;;; init.el --- the entry of emacs config

;;; Commentary:

;;; Code:

;;先設置加載的目標目錄到load-path中
;;user-emacs-directory指的是~/.emacs.d這個目錄
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "lisp")))

;;叫用文件
(require 'init-const)
(require 'init-kbd)
(require 'init-startup)
(require 'init-elpa)
(require 'init-package)
(require 'init-ui)

;; load custom file at last
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;;; init.el ends here
