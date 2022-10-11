<!DOCTYPE html>
<html>
<head>
  <title>YouTube検索結果 - tetsubo</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link rel="stylesheet" href="peak_result.css" type="text/css" media="(max-width: 899px)">
  <link rel="stylesheet" href="peak_result.css" type="text/css" media="(min-width: 900px)">
  <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js?ver=3.3.1'></script>
  <script src="./peak_result.js"></script>
</head>
<body>
  <h1>個人用ページ</h1>

  <h3>ピーク検出結果</h3>
  <section>
  
  {% for v in data %}
    <div class="flex_item">
      <div class="img_container"><img src="{{v['img_url']}}"><p>kw: {{v['keyword']}}</p></div>
      <dl class="toggle_contents">
        <dt class="toggle_title">ピーク情報<span class="toggle_btn">開く</span></dt>
        <dd><ul>
        {% for p in v['peak_list'] %}
          <li><div class="li_item">
            <div class="li_if">ピーク値: {{p['peak_count']}}<br>{{p['str_time']}}</div>
            <div><a href="{{p['video_url_1']}}" target="_blank">30s</a> <a href="{{p['video_url_2']}}" target="_blank">1m</a>
          </div></li>
        {% endfor %}
        </ul></dd>
      </dl>
    </div>
  {% endfor %}
  
  </section>
</body>
</html>
