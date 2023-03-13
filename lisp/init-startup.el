;;; init-startup.el --- configs for startup

;;; Commentary:

;;; Code:

;;避免亂碼
(prefer-coding-system 'utf-8)
(unless *is-windows*
    (set-selection-coding-system 'utf-8))

;;設置垃圾回收門檻值，加速啟動速度。
(setq gc-cons-threshold most-positive-fixnum)

;;關掉啟動界面
(setq inhibit-startup-screen t)

;;各個文件通過 provide 暴露對外調用的名稱，其他檔案可以使用require來叫用此名稱
(provide 'init-startup)

;;; init-startup.el ends here
