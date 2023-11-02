const searchIcon = document.getElementById('search-icon');
const searchInput = document.getElementById('search-input');

searchIcon.addEventListener('click', () => {
  searchInput.classList.toggle('active');
  if (searchInput.classList.contains('active')) {
    searchInput.focus();
  }
});

// JavaScript 코드
document.addEventListener('DOMContentLoaded', function () {
  // 초기로 보여질 'issue_li' 박스 개수
  var initiallyVisible = 4;
  
  // 모든 'issue_li' 요소를 가져옵니다.
  var issueLiItems = document.querySelectorAll('.issue_li');
  
  // '더 보기' 버튼을 가져옵니다.
  var loadMoreButton = document.getElementById('load-More');
  
  // 더보기 버튼 클릭 이벤트 처리
  loadMoreButton.addEventListener('click', function () {
      for (var i = initiallyVisible; i < issueLiItems.length; i++) {
          // 나머지 'issue_li' 박스를 보이도록 설정
          issueLiItems[i].style.display = 'block';
      }
      
      // '더 보기' 버튼을 숨김
      loadMoreButton.style.display = 'none';
  });
  
  // 초기로 일부 'issue_li' 박스만 보이도록 설정
  for (var i = initiallyVisible; i < issueLiItems.length; i++) {
      issueLiItems[i].style.display = 'none';
  }
});