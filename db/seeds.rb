Category.create!([
  {ctg: "開発"},
  {ctg: "経理"},
  {ctg: "営業"},
  {ctg: ""},
  {ctg: ""},
  {ctg: ""},
  {ctg: ""},
  {ctg: ""}
])
Master.create!([
  {user_id: 9, j: "日報音声入力システムに着手しました", e: nil, category_id: 1, memo: nil, coment: nil, fn: nil, dt: "2018-11-20 08:01:10", public: nil},
  {user_id: 9, j: "今日から業務日報をつけます。データをテキスト化しました", e: nil, category_id: 1, memo: nil, coment: nil, fn: nil, dt: "2018-11-20 08:30:29", public: nil},
  {user_id: 9, j: "日付の処理が今のところうまくいきません。\r\n明日はそこから始めます", e: nil, category_id: 1, memo: nil, coment: nil, fn: nil, dt: "2018-11-20 08:39:59", public: nil},
  {user_id: 9, j: "本日はウィンジップのセッティング。\r\n明日は休みの予定です", e: nil, category_id: 1, memo: nil, coment: nil, fn: nil, dt: "2018-11-21 05:28:08", public: nil},
  {user_id: 9, j: "タイムゾーンが9時間ずれるのを修正しています。\r\n多分これでうまくいくと思います", e: nil, category_id: 1, memo: nil, coment: nil, fn: nil, dt: "2018-11-21 05:50:12", public: nil},
  {user_id: 9, j: "解決しませんでした。\r\nまた違う方法を試しました", e: nil, category_id: 1, memo: nil, coment: nil, fn: nil, dt: "2018-11-21 05:54:19", public: nil},
  {user_id: 9, j: "またダメでした。\r\nさらに別の方法を試します", e: nil, category_id: 1, memo: nil, coment: nil, fn: nil, dt: "2018-11-21 05:55:52", public: nil},
  {user_id: 9, j: "timezone Asia 東京にしてみました", e: nil, category_id: 1, memo: nil, coment: nil, fn: nil, dt: "2018-11-21 06:08:20", public: nil}
])
