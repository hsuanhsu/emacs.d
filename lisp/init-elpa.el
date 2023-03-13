;;; init-elpa.el --- initialize the elpa repository

;;; Commentary:

;;; Code:

;;个别时候会出现签名检验失败
(setq package-check-signature nil)

;; 初始化软件包管理器
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(unless (bound-and-true-p package--initialized)
    (package-initialize))

;; 刷新软件源索引
(unless package-archive-contents
    (package-refresh-contents))

;; 第一个扩展插件：use-package，用来批量统一管理软件包
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

;; 'use-package-always-ensure' 避免每个软件包都需要加 ":ensure t"
;; 'use-package-always-defer' 避免每个软件包都需要加 ":defer t"
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-enable-imenu-support t
      use-package-expand-minimally t)

;;使用use-package
(require 'use-package)

;;各個文件通過 provide 暴露對外調用的名稱，其他檔案可以使用require來叫用此名稱
(provide 'init-elpa)

;;; init-elpa.el ends here
