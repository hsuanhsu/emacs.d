;;; init-kbd.el --- setting for keyboard

;;; Commentary:

;;; Code:

;;改成輸入y或n就好
(defalias 'yes-or-no-p 'y-or-n-p)

;;各個文件通過 provide 暴露對外調用的名稱，其他檔案可以使用require來叫用此名稱
(provide 'init-kbd)

;;; init-kbd.el ends here
