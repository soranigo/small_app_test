const btn = document.getElementByIClassName('eat');
const score_objects = document.getElementById('eat').value1;
const score_object = a; //score_objectsの最初のレコード
const score = document.getElementById('eat').value2;

btn.addEventListener("click", () => {
  //取得したscore_objectのscoreカラムで条件分岐
  //scoreカラム > 0の場合、scoreカラムの数値分加点し、score_objectの消去
  //scoreカラム <= 0の場合、ゲーム終了
});