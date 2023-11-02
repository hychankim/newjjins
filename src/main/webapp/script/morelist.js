const productList = document.querySelector(".news-list");
const loadMoreButton = document.getElementById("load-more");

let currentIndex = 3;
let maxClicks = 2;

loadMoreButton.addEventListener("click", function () {
    if (maxClicks > 0) {
        for (let i = currentIndex; i < currentIndex + 3; i++) {
            const productDiv = document.createElement("div");
            productDiv.classList.add("newsli");
            productDiv.textContent = `상품`;
            productList.appendChild(productDiv);
        }
        currentIndex += 3;
        maxClicks--;

        if (maxClicks === 0) {
            loadMoreButton.disabled = true;
            loadMoreButton.style.display = "none";
        }
    }
});
