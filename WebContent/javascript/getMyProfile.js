//profile.jsp에서 정보 가져옴
function getProfile() {
  axios
    .get('jsp/profile.jsp')
    .then((response) => {
      //console.log(response.data);
      document.getElementById('profile').innerHTML = response.data;
    })
    .catch((error) => {
      console.log(error);
      alert('프로필을 불러오는데 실패하였습니다.');
    });
}

function init() {
  getProfile();
}

init();
