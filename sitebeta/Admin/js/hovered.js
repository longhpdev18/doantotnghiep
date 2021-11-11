//thêm lớp được di chuột vào một danh mục đã chọn
let list = document.querySelectorAll('.navigation li');
function activeLink() {
    list.forEach((item) =>
        item.classList.remove('hovered'));
        this.classList.add('hovered');
}
list.forEach((item) =>
    item.addEventListener('mouseover', activeLink));
//menuToggle 
    let toggle = document.querySelector('.toggle');
    let navigation = document.querySelector('.navigation');
    let main = document.querySelector('.main');

    toggle.onclick = function(){
        navigation.classList.toggle('active');
        main.classList.toggle('active');
    }
//click all checkbox 
function checkUncheck(main){
    all = document.getElementsByName('lang');
    for(var a = 0; a<all.length; a++) {
        all[a].checked = main.checked;
    }
}

//profile 
function menuToggle(){
    const toggleMenu = document.querySelector('.menu');
    toggleMenu.classList.toggle('active')
}
