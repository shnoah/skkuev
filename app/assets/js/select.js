function Category(value) {
  this.value = value;
  this.length = 0;
}

function addCategory(category, value) {
  category[category.length] = new Category(value);
  category.length++;
}

var category = new Category();

addCategory(category, "인문사회");
addCategory(category[0], "경영대학");
addCategory(category[0][0], "경영대학");
addCategory(category[0][0], "경영학과");
addCategory(category[0][0], "글로벌경영학과");
addCategory(category[0], "경제대학");
addCategory(category[0][1], "경제학과");
addCategory(category[0][1], "국제통상학과");
addCategory(category[0][1], "글로벌경제학과");
addCategory(category[0][1], "통계학과");
addCategory(category[0], "문과대학");
addCategory(category[0][2], "국어국문학과");
addCategory(category[0][2], "영어영문학과");
addCategory(category[0][2], "중어중문학과");
addCategory(category[0][2], "프랑스어문학과");
addCategory(category[0][2], "독어독문학과");
addCategory(category[0][2], "러시아어문학과");
addCategory(category[0][2], "한문학과");
addCategory(category[0][2], "사학과");
addCategory(category[0][2], "철학과");
addCategory(category[0][2], "문헌정보학과");
addCategory(category[0][2], "비교문화전공");
addCategory(category[0][2], "일본학전공");
addCategory(category[0][2], "글로벌문화콘텐츠");
addCategory(category[0][2], "데이터사이언스");
addCategory(category[0], "법과대학");
addCategory(category[0][3], "법학과");
addCategory(category[0], "사범대학");
addCategory(category[0][4], "교육학과");
addCategory(category[0][4], "수학교육학과");
addCategory(category[0][4], "한문교육학과");
addCategory(category[0][4], "컴퓨터교육학과");
addCategory(category[0], "사회과학대학");
addCategory(category[0][5], "사회학과");
addCategory(category[0][5], "사회복지학과");
addCategory(category[0][5], "신문방송학과");
addCategory(category[0][5], "심리학과");
addCategory(category[0][5], "행정학과");
addCategory(category[0][5], "글로벌리더학과");
addCategory(category[0][5], "소비자가족학과");
addCategory(category[0][5], "아동청소년학과");
addCategory(category[0], "예술대학");
addCategory(category[0][6], "예술대학");
addCategory(category[0][6], "미술학과");
addCategory(category[0][6], "연기예술학과");
addCategory(category[0][6], "디자인학과");
addCategory(category[0][6], "무용학과");
addCategory(category[0][6], "영상학과");
addCategory(category[0], "유학대학");
addCategory(category[0][7], "유학대학");
addCategory(category[0][7], "유학동양학과");
addCategory(category, "자연과학");
addCategory(category[1], "implement");
addCategory(category[1][0], "nail");
addCategory(category[1][0], "ttweezer");
addCategory(category[1][0], "scissors");
addCategory(category[1][0], "pusher cleaner and knife");
addCategory(category[1][0], "trimmer");
addCategory(category[1][0], "nail clipper");
addCategory(category[1][0], "nail nipper");
addCategory(category[1][0], "emery boards");
addCategory(category[1][0], "buffer");
addCategory(category[1][0], "ear pick");
addCategory(category[1][0], "multi useful kits");
addCategory(category[1], "artificial nail");
addCategory(category, "교양과목");
addCategory(category[2], "pumice stone");
addCategory(category[2][0], "natural");
addCategory(category[2][0], "atrtificial");
addCategory(category[2][0], "ceramic");
addCategory(category[2][0], "sponge");
addCategory(category[2], "foot file");
addCategory(category[2][1], "emery");
addCategory(category[2][1], "metalic");
addCategory(category[2][1], "laser");
addCategory(category[2][1], "ceramic");
addCategory(category[2], "toe separator");
addCategory(category[2], "toe nail clipper");


function initForm(form) {
  form.subject.length = category.length;
  for (i = 0; i < category.length; i++)
    form.subject[i].text = category[i].value;
  form.subject.selectedIndex = 0;
  form.group.selectedIndex = 0;
  change_subject(form);
}

function change_subject(form) {
  var i = form.subject.selectedIndex;
  form.group.length = category[i].length;
  for (j = 0; j < form.group.length; j++)
    form.group[j].text = category[i][j].value;
  form.group.selectedIndex = 0;
  change_group(form);
}

function change_group(form) {
  var i = form.subject.selectedIndex
  var j = form.group.selectedIndex;
  form.dept.length = category[i][j].length;
  for (k = 0; k < form.dept.length; k++)
    form.dept[k].text = category[i][j][k].value;
  form.dept.selectedIndex = 0;
}
