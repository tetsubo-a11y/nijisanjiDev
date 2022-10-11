<!DOCTYPE html>
<html>
<head>
  <title>YouTube検索結果 - tetsubo</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link rel="stylesheet" href="egosa_mobile.css" type="text/css" media="(max-width: 899px)">
  <link rel="stylesheet" href="egosa_pc.css" type="text/css" media="(min-width: 900px)">
</head>
<body>
  <h1>YouTube検索結果</h1>
  <h2>検索ワード</h2>
  
  {% for key, value in keywords.items() %}
    <button class="dis_none_bt_{{value}}">{{key}}</button>
  {% endfor %}
  
  <h2>検索結果</h2>
  <section class="videos">
    {% for item in videos %}
      <div class="video {{item[9]}}">
        <img src="{{item[6]}}" />
        <div class="title"><a href="https://www.youtube.com/watch?v={{item[0]}}">{{item[1]}}</a></div>
        <div class="disc">{{item[2]}}<br>{{item[3]}} 投稿<br>{{item[4]}} 回視聴・高評価 {{item[5]}} 回</div>
        <div class="sword">{{item[7]}} GET {{item[8]}}</div>
      </div>
    {% endfor %}
  </section>
  
  <script>
    {% for item in keywords.values() %}
      {
        const video_items_{{item}} = document.querySelectorAll('.{{item}}');
        const dis_none_bt_{{item}} = document.querySelector('.dis_none_bt_{{item}}');
        dis_none_bt_{{item}}.addEventListener('click' ,  () => {
          video_items_{{item}}.forEach(function(e) {e.classList.toggle('display_none');})
        });
      }
    {% endfor %}
  </script>

</body>
</html>

