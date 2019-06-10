$(document).ready(function() {
    dropdownSelectHeader();
    const Header = {
        toggleSearchBox: function() {
            let searchIcon = $('.search-wrapper i')
            let searchBox = $('.search-box')
            searchIcon.on('click', function() {
                searchBox.toggleClass('active')
            })
        },
        toggleMenu: function() {
            let toggleMenu = $('header .toggle-menu')
            let menuParent = $('header .menu-parent')
            let contactinfo = $('header .contact-info')
            let backdrop = $('header .backdrop')
            let overflowHidden = $('html')
            toggleMenu.on('click', function() {
                toggleMenu.toggleClass('open')
                menuParent.toggleClass('active')
                contactinfo.toggleClass('active')
                backdrop.toggleClass('active')
                overflowHidden.toggleClass('active')
            })
        },
        moveContactInfo: function() {
            let moveContactInfo = new MappingListener({
                selector: 'header .contact-info',
                mobileWrapper: '.mobile-header',
                mobileMethod: 'appendTo',
                desktopWrapper: '.top-header-menu',
                desktopMethod: 'prependTo',
                breakpoint: 992,
            }).watch()
        },
        moveMainMenu: function() {
            let moveMainMenu = new MappingListener({
                selector: 'header .menu-parent',
                mobileWrapper: '.mobile-header',
                mobileMethod: 'appendTo',
                desktopWrapper: '.main-header-menu',
                desktopMethod: 'insertBefore',
                // desktopWrapper: '.main-header-wrapper',
                // desktopMethod: 'appendTo',
                breakpoint: 992,
            }).watch()
        },
        moveToggleMenu: function() {
            let moveToggleMenu = new MappingListener({
                selector: 'header .toggle-menu',
                mobileWrapper: '.mobile-header',
                mobileMethod: 'appendTo',
                desktopWrapper: '.main-header-wrapper',
                desktopMethod: 'prependTo',
                breakpoint: 992,
            }).watch()
        },
        moveLanguageBox: function() {
            let moveLanguageBox = new MappingListener({
                selector: 'header .language',
                mobileWrapper: '.menu-parent',
                mobileMethod: 'appendTo',
                desktopWrapper: '.top-header-menu',
                desktopMethod: 'appendTo',
                breakpoint: 992,
            }).watch()
        },
        moveLogo: function() {
            let moveLogo = new MappingListener({
                selector: 'header .logo-wrapper',
                mobileWrapper: '.mobile-header',
                mobileMethod: 'appendTo',
                desktopWrapper: '.main-header-wrapper',
                desktopMethod: 'prependTo',
                breakpoint: 992,
            }).watch()
        },
        moveSearchBox: function() {
            let moveSearchBox = new MappingListener({
                selector: 'header .search-box',
                mobileWrapper: '.menu-parent',
                mobileMethod: 'appendTo',
                desktopWrapper: '.search-wrapper',
                desktopMethod: 'appendTo',
                breakpoint: 992,
            }).watch()
        }
    };
    var moveNavBarTopList = new MappingListener({
        selector: '.contact-info',
        mobileWrapper: '.mobile-header',
        mobileMethod: 'appendTo',
        desktopWrapper: '.top-header-menu',
        desktopMethod: 'prependTo',
        breakpoint: 768,
    }).watch()

    transformHome2()
    studentActiveSlide();
    parentsActiveSlide();
    otherNewsSlide();
    homeBanner();
    home4Tab()
    home7Tab()
    home5Slide()
    home6Slide()
    home7Slide()
    home7Nav()
    equalHeight('.home-4 .main-content .item a figure figcaption .text')
    equalHeight('.home-6 .item .desc')
    Header.toggleSearchBox();
    Header.moveContactInfo();
    Header.moveLanguageBox();
    Header.moveLogo();
    Header.moveToggleMenu();
    Header.moveMainMenu();
    Header.moveSearchBox();
    Header.toggleMenu();
});

function dropdownSelectHeader() {
    var x, i, j, selElmnt, a, b, c
    x = document.getElementsByClassName("custom-select")
    for (i = 0; i < x.length; i++) {
        selElmnt = x[i].getElementsByTagName("select")[0]
        a = document.createElement("DIV");
        a.setAttribute("class", "select-selected fas fa-chevron-down");
        a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
        x[i].appendChild(a);
        b = document.createElement("DIV");
        b.setAttribute("class", "select-items select-hide");
        for (j = 1; j < selElmnt.length; j++) {
            c = document.createElement("DIV");
            c.innerHTML = selElmnt.options[j].innerHTML;
            c.addEventListener("click", function(e) {
                var y, i, k, s, h;
                s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                h = this.parentNode.previousSibling;
                for (i = 0; i < s.length; i++) {
                    if (s.options[i].innerHTML == this.innerHTML) {
                        s.selectedIndex = i;
                        h.innerHTML = this.innerHTML;
                        y = this.parentNode.getElementsByClassName("same-as-selected");
                        for (k = 0; k < y.length; k++) {
                            y[k].removeAttribute("class");
                        }
                        this.setAttribute("class", "same-as-selected");
                        break;
                    }
                }
                h.click();
            });
            b.appendChild(c);
        }
        x[i].appendChild(b);
        a.addEventListener("click", function(e) {
            e.stopPropagation();
            closeAllSelect(this);
            this.nextSibling.classList.toggle("select-hide");
            this.classList.toggle("select-arrow-active");
        });
    }
}

function closeAllSelect(elmnt) {
    var x, y, i, arrNo = [];
    x = document.getElementsByClassName("select-items");
    y = document.getElementsByClassName("select-selected");
    for (i = 0; i < y.length; i++) {
        if (elmnt == y[i]) {
            arrNo.push(i)
        } else {
            y[i].classList.remove("select-arrow-active");
        }
    }
    for (i = 0; i < x.length; i++) {
        if (arrNo.indexOf(i)) {
            x[i].classList.add("select-hide");
        }
    }
}
document.addEventListener("click", closeAllSelect);

function studentActiveSlide() {
    return new Swiper('.student-active .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 30,
        navigation: {
            nextEl: '.student-active .btn-next',
            prevEl: '.student-active .btn-prev',
        },
        breakpoints: {
            992: {
                slidesPerView: 3
            },
            768: {
                slidesPerView: 2
            },
            576: {
                slidesPerView: 1
            }
        }
    })
};

function parentsActiveSlide() {
    return new Swiper('.parents-active .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 30,
        navigation: {
            nextEl: '.parents-active .btn-next',
            prevEl: '.parents-active .btn-prev',
        },
        breakpoints: {
            992: {
                slidesPerView: 3
            },
            768: {
                slidesPerView: 2
            },
            576: {
                slidesPerView: 1
            }
        }
    })
};

function otherNewsSlide() {
    return new Swiper('.other-news .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 30,
        navigation: {
            nextEl: '.other-news .btn-next',
            prevEl: '.other-news .btn-prev',
        },
        breakpoints: {
            992: {
                slidesPerView: 3
            },
            768: {
                slidesPerView: 2
            },
            576: {
                slidesPerView: 1
            }
        }
    })
};

function homeBanner() {
    return new Swiper('.banner .swiper-container', {
        speed: 1000,
        autoplay: {
            delay: 4000
        }
    })
}

function transformHome2() {
    if (window.innerWidth > 768) {
        let offset = document.querySelector('.home-1').offsetHeight - 100
        document.querySelector('.home-2').setAttribute('style', 'margin-top: -' + offset + 'px; padding-top: calc(90px + ' + offset + 'px)')
    }
}

function equalHeight(el) {
    var height = 0
    for (let i = 0; i < $(el).length; i++) {
        if ($(el).height() > height) {
            height = $(el).height()
        }
    }
    // setInterval(() => {
    $(el).height(height)
        // }, 100);
}

function home4Tab() {
    $('.home-4 .main-nav .item').on('click', function() {
        $('.home-4 .main-nav .item').removeClass('active'),
            $(this).addClass('active')
        let i = $(this).attr('data-tab')
        $('.home-4 .main-content .content-item').removeClass('active')
        $('.home-4 .main-content .content-item[data-content=' + i + ']').addClass('active')
    })
}

function home5Slide() {
    return new Swiper('.home-5 .swiper-container', {
        slidesPerView: 3,
        spaceBetween: 30,
        speed: 1000,
        navigation: {

            nextEl: '.home-5 .swiper-right',
            prevEl: '.home-5 .swiper-left',
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            992: {
                slidesPerView: 2
            },
            576: {
                slidesPerView: 1
            }
        }
    })
}

function home6Slide() {
    return new Swiper('.home-6 .swiper-container', {
        slidesPerView: 3,
        spaceBetween: 80,
        speed: 1000,
        // navigation: {

        //     nextEl: '.home-6 .swiper-right',
        //     prevEl: '.home-6 .swiper-left',
        // },
        pagination: {
            el: '.home-6 .swiper-pagination',
            clickable: true
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            992: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            576: {
                slidesPerView: 1
            }
        }
    })
}

function home7Slide() {
    return new Swiper('.home-7 .swiper-container', {
        slidesPerView: 3,
        spaceBetween: 30,
        speed: 1000,
        navigation: {

            nextEl: '.home-7 .swiper-right',
            prevEl: '.home-7 .swiper-left',
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            992: {
                slidesPerView: 2
            },
            576: {
                slidesPerView: 1
            }
        }
    })
}

function home7Tab() {
    $('.home-7 .main-nav .item').on('click', function() {
        $('.home-7 .main-nav .item').removeClass('active'),
            $(this).addClass('active')
        let i = $(this).attr('data-tab')
        $('.home-7 .main-content .content-item').removeClass('active')
        $('.home-7 .main-content .content-item[data-content=' + i + ']').addClass('active')
        home7Slide()
    })

}

function home7Nav() {
    if ($(window).width() > 992) {
        setTimeout(() => {
            let height = $('.home-7 .main-content .content-item .item a figure .video').height()
            $('.home-7 .swiper-nav .swiper-btn').css('top', 'calc(' + height + 'px / 2)')
                // console.log('top', 'calc(' + height + 'px / 2)')
                // console.log('top', 'calc(' + height + ' / 2)')
        }, 100);

    }
}