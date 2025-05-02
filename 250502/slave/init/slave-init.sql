-- これは起動後に実行する内容ですが、initファイルに書いても良いです。
-- MASTER_LOG_FILE と POSITION は mysql-master 起動後に確認してから設定します。

-- 以下のような手動操作が必要です（コンテナ内で実行）:
-- CHANGE MASTER TO MASTER_HOST='mysql-master', MASTER_USER='replica_user',
-- MASTER_PASSWORD='replica_pass', MASTER_LOG_FILE='mysql-bin.000001',
-- MASTER_LOG_POS=XXX;
-- START SLAVE;
