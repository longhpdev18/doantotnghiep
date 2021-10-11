window.addEventListener("load", function () {
    const slider = document.querySelector('.slider');
    const sliderMain = document.querySelector('.slider__main');
    const sliderItem = document.querySelectorAll('.slider-item');
    const prevBtn = document.querySelector('.slider-prev');
    const nextBtn = document.querySelector('.slider-next');
    const sliderItemWidth = sliderItem[0].offsetWidth;
    const sliderLength = sliderItem.length;

    let positionX = 0;
    let index = 0;


    nextBtn.addEventListener("click", function () {
        handleChangeSlide(1);
    })
    prevBtn.addEventListener("click", function () {
        handleChangeSlide(-1);
    })



    function handleChangeSlide(direction) {
        if (direction === 1) {
            index++;
            if (index >= sliderLength) {
                index = sliderLength;
                return;
            }
            positionX = positionX - sliderItemWidth;

            sliderMain.style = `transform: translateX(${positionX}px)`;

        } else if (direction === -1) {
            index--;
            if (index <= 0) {
                index = 0;
                return;
            }
            positionX = positionX + sliderItemWidth;

            sliderMain.style = `transform: translateX(${positionX}px)`;
        }
    }

})

window.addEventListener("scroll", function () {
    var pageScrollY = window.scrollY;
    var btnCat = document.querySelector(".btn-cat");
    console.log(pageScrollY);

    if (pageScrollY >= 500) {
        $('.btn-cat').mouseover(function () {
            $('.dropmenu').removeClass('hidden');
        })
        $('.btn-cat').mouseout(function () {
            $('.dropmenu').addClass('hidden');
        })
    } else {
        $('.btn-cat').hover(function () {
            $('.dropmenu').addClass('hidden');
        })
    }
});