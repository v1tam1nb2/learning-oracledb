--参考：https://software.fujitsu.com/jp/manual/manualfiles/M060043/B1FN5201/01Z200/gen03/gen00041.html

OPTIONS(SKIP=1) --CSVデータの見出しをスキップするため、SKIP=1は必須
LOAD DATA
INFILE '/data/personal_data.csv' ----読み込むファイル
INSERT
INTO TABLE PDBADMIN.PERSONAL --対象のテーブル名
FIELDS TERMINATED BY ',' --データを「,」で区切る
OPTIONALLY ENCLOSED BY '"' --「"」で囲む
TRAILING NULLCOLS --データの存在しないものはNULLとして扱う
(name,address,mobile)
