;;; init-ui.el --- setting for theme

;;; Commentary:

;;; Code:

;;顯示行號
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;;各個文件通過 provide 暴露對外調用的名稱，其他檔案可以使用require來叫用此名稱
(provide 'init-ui)

;;; init-ui.el ends here
