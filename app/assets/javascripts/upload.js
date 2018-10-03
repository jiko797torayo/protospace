$(function(){
    // MAIN
  //画像ファイルプレビュー表示のイベント追加 fileを選択時に発火するイベントを登録
  $('form').on('change', 'input[id="prototype_captured_images_attributes_0_content"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $(".cover-image-upload");
        t = this;
            // 画像ファイル以外の場合は何もしない
    if(file.type.indexOf("image") < 0){
      return false;
    }
    // ファイル読み込みが完了した際のイベント登録
    reader.onload = (function(file) {
      return function(e) {
        //既存のプレビューを削除
        // $preview.empty();
        // .prevewの領域の中にロードした画像を表示するimageタグを追加
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "100%",
                  height: "100%",
                  title: file.name
              }));
      };
    })(file);
    reader.readAsDataURL(file);
  });

  // SUB1
  $('form').on('change', 'input[id="prototype_captured_images_attributes_1_content"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $("#image_0_upload");
        t = this;
    if(file.type.indexOf("image") < 0){
      return false;
    }
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "100%",
                  height: "100%",
                  title: file.name
              }));
      };
    })(file);
    reader.readAsDataURL(file);
  });
  // SUB2
  $('form').on('change', 'input[id="prototype_captured_images_attributes_2_content"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $("#image_1_upload");
        t = this;
    if(file.type.indexOf("image") < 0){
      return false;
    }
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "100%",
                  height: "100%",
                  title: file.name
              }));
      };
    })(file);
    reader.readAsDataURL(file);
  });
// SUB3
  $('form').on('change', 'input[id="prototype_captured_images_attributes_3_content"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $("#image_2_upload");
        t = this;
    if(file.type.indexOf("image") < 0){
      return false;
    }
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "100%",
                  height: "100%",
                  title: file.name
              }));
      };
    })(file);
    reader.readAsDataURL(file);
  });
});
