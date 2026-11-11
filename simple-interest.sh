   #!/bin/bash
   # このスクリプトは元本、年利率、および年数に基づいて単純利息を計算します。

   # 本番環境では使用しないでください。サンプル目的のみです。

   # 作成者: Upkar Lidder (IBM)
   # 追加の作成者:Kazuharu Sakurai
   # GitHubユーザー名:hanaguwashisakuraniharukita-cpu

   # 入力:
   # p, 元本
   # t, 年数
   # r, 年利率

   # 出力:
   # 単純利息 = p*t*r

   echo "元本を入力してください:"
   read p
   echo "年数を入力してください:"
   read t
   echo "年利率を入力してください:"
   read r

   #元本・期間・利率をもとに、小数点以下第2位までの単利（利息）を外部電卓で計算して、変数 s に代入する
   s=$(echo "scale=2; $p * $t * $r / 100" | bc)
   echo "単純利息は: "
   echo $s
