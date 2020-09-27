//nav_bar.jsp에서 정보 가져옴
function getNavBar() {
  axios
      .get('jsp/nav_bar.jsp')
      .then((response) => {
        //console.log(response.data);
        document.getElementById('nav_bar').innerHTML = response.data;
      })
      .catch((error) => {
        console.log(error);
        alert('네비게이션 바를 불러오는데 실패하였습니다.');
      });
}

function init() {
  getNavBar();
}

init();
