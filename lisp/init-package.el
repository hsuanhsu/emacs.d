;;; init-package.el --- setting for packages

;;; Commentary:

;;; Code:

;;通過benchmark-init這個package來進行啟動耗時的測量
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

;;允許使用M-up或M-down對文本區域整塊移動
(use-package move-dup
  :hook (after-init . global-move-dup-mode))

;;文本編輯自動補全
(use-package company
  :hook (after-init . global-company-mode)
  :config (setq company-minimum-prefix-length 1
                company-show-quick-access t))

;;文本編輯語法檢查
(use-package flymake
  :hook (prog-mode . flymake-mode)
  :config
  (global-set-key (kbd "M-n") #'flymake-goto-next-error)
  (global-set-key (kbd "M-p") #'flymake-goto-prev-error))

;;快捷鍵提示
(use-package which-key
  :defer nil
  :config (which-key-mode))

;;允許使用M-x空格restart-emacs來重啟
(use-package restart-emacs)

;;各個文件通過 provide 暴露對外調用的名稱，其他檔案可以使用require來叫用此名稱
(provide 'init-package)

;;; init-package.el ends here
