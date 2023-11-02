const articles = document.querySelectorAll('.article');
const pages = Math.ceil(articles.length / 5);
let currentPage = 1;

function showPage(page) {
    articles.forEach((article, index) => {
        article.style.display = (index >= (page - 1) * 5 && index < page * 5) ? 'block' : 'none';
    });

    // 페이지 번호 버튼 스타일 변경
    const pageLinks = document.querySelectorAll('.page');
    pageLinks.forEach(link => {
        if (parseInt(link.textContent) === page) {
            link.classList.add('active');
        } else {
            link.classList.remove('active');
        }
    });
}

showPage(currentPage);

document.getElementById('prevPage').addEventListener('click', () => {
    if (currentPage > 1) {
        currentPage--;
        showPage(currentPage);
    }
});

document.getElementById('nextPage').addEventListener('click', () => {
    if (currentPage < pages) {
        currentPage++;
        showPage(currentPage);
    }
});

const pageLinks = document.querySelectorAll('.page');
pageLinks.forEach(link => {
    link.addEventListener('click', () => {
        currentPage = parseInt(link.textContent);
        showPage(currentPage);
    });
});
