//feed.jsp에서 정보 가져옴
function getAllFeed() {
  axios
    .get('feed', {
      params: {
        command: 'list',
      },
    })
    .then((response) => {
      console.log("getAllContent.js 접근");
      document.getElementById('feed').innerHTML = response.data;
    })
    .catch((error) => {
      console.log(error);
      alert('피드를 불러오는데 실패하였습니다.');
    });
}

function init() {
  getAllFeed();
}

init();
