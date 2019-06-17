function bgImg() {
    $('[bg-img]').each(function() {
        var bgimg = $(this).attr('bg-img');
        var pos = $(this).attr('bg-pos');
        var size = $(this).attr('bg-size');
        if (pos && pos.length > 0) {
            $(this).css({
                "background-position": pos
            });
        } else {
            $(this).css({
                "background-position": "center center"
            });
        }
        if (size && size.length > 0) {
            $(this).css({
                "background-size": size
            });
        } else {
            $(this).css({
                "background-size": "cover"
            });
        }
        $(this).css({
            "background-image": "url(" + bgimg + ")"
        });
    });
}

var header = {
    searchBox: function() {
        $('header .search-main .search-icon').on('click', function(e) {
            $(this).siblings('.searchbox').toggleClass('active')
                // $('html').one('click', function() {
                //     $('header .search-main .searchbox').removeClass('active')
                // });
                // e.stopPropagation();
        })
    },
    toggleButton: function() {
        $('header .mobile-toggle').on('click', function() {
            $(this).toggleClass('active')
            $('header .mobile-wrap').toggleClass('active')
            var delay = 0.2
            $('header .mobile-wrap .main-list ul li').each(function(index) {
                if ($('header .mobile-wrap').hasClass('active')) {
                    $(this).css({
                        "transition-delay": .5 + (delay * index) + 's'
                    })
                } else {
                    $(this).css({
                        "transition-delay": '0s'
                    })
                }
            })
        })
    },
    headerMapping: function() {
        return {
            'mainList': new MappingListener({
                selector: 'header .main-list',
                mobileWrapper: 'header .mobile-wrap',
                mobileMethod: 'appendTo',
                desktopWrapper: 'header .logo',
                desktopMethod: 'insertAfter',
                breakpoint: 1025,
            }).watch(),
            'searchBox': new MappingListener({
                selector: 'header .search-main .searchbox',
                mobileWrapper: 'header .mobile-wrap',
                mobileMethod: 'appendTo',
                desktopWrapper: 'header .search-main',
                desktopMethod: 'appendTo',
                breakpoint: 1025,
            }).watch(),
            'heThongTruongHoc': new MappingListener({
                selector: 'header .hethong',
                mobileWrapper: 'header .mobile-wrap',
                mobileMethod: 'appendTo',
                desktopWrapper: 'header .top-wrap .main-wrap',
                desktopMethod: 'appendTo',
                breakpoint: 1025,
            }).watch(),
            'phone': new MappingListener({
                selector: 'header .phone',
                mobileWrapper: 'header .mobile-wrap',
                mobileMethod: 'appendTo',
                desktopWrapper: 'header .top-wrap .main-wrap',
                desktopMethod: 'appendTo',
                breakpoint: 1025,
            }).watch(),
            'dangNhap': new MappingListener({
                selector: 'header .dangnhap',
                mobileWrapper: 'header .mobile-wrap',
                mobileMethod: 'appendTo',
                desktopWrapper: 'header .top-wrap .main-wrap',
                desktopMethod: 'appendTo',
                breakpoint: 1025,
            }).watch()

        }
    },
    'heThongTruongHoc': function() {
        $('header .hethong select').on('change', function() {
            window.location = $(this).val();
        })
    }
}

function studentActiveSlide() {
    return new Swiper('.student-active .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 30,
        navigation: {
            nextEl: '.student-active .btn-next',
            prevEl: '.student-active .btn-prev',
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1024: {
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
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1024: {
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
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1025: {
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
    if ($(window).width() > 768) {
        let offset = $('.home-1').height() - 100
        $('.home-2').css({
            'margin-top': '-' + offset + 'px',
            'padding-top': 'calc(90px + ' + offset + 'px)'
        })
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

function chuongTrinhHocTab() {
    $('.chuongtrinhhoc-1 .main-nav .item').on('click', function() {
        $('.chuongtrinhhoc-1 .main-nav .item').removeClass('active'),
            $(this).addClass('active')
        let i = $(this).attr('data-tab')
        $('.chuongtrinhhoc-1 .main-content .content-item').removeClass('active')
        $('.chuongtrinhhoc-1 .main-content .content-item[data-content=' + i + ']').addClass('active')
    })
}

function home1Slide() {
    return new Swiper('.home-1 .swiper-container', {
        slidesPerView: 3,
        spaceBetween: 0,
        speed: 1000,
        // navigation: {

        //     nextEl: '.home-5 .swiper-right',
        //     prevEl: '.home-5 .swiper-left',
        // },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1025: {
                slidesPerView: 2
            },
            576: {
                slidesPerView: 1
            }
        }
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
            1025: {
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
            1025: {
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
            1025: {
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
    if ($(window).width() > 1025) {
        setTimeout(() => {
            let height = $('.home-7 .main-content .content-item .item a figure .video').height()
            $('.home-7 .swiper-nav .swiper-btn').css('top', 'calc(' + height + 'px / 2)')
                // console.log('top', 'calc(' + height + 'px / 2)')
                // console.log('top', 'calc(' + height + ' / 2)')
        }, 100);

    }
}

function gioithieu1Slide() {
    return {
        'slide1': new Swiper('.gioithieu-1 .swiper-1', {
            slidesPerView: 1,
            speed: 1000,
            pagination: {
                el: '.gioithieu-1 .swiper-1 .swiper-pagination',
                clickable: true
            },
            autoplay: {
                delay: 4000
            }
        }),
        'slide2': new Swiper('.gioithieu-1 .swiper-2', {
            slidesPerView: 1,
            speed: 1000,
            pagination: {
                el: '.gioithieu-1 .swiper-2 .swiper-pagination',
                clickable: true
            },
            autoplay: {
                delay: 4000
            }
        })
    }
}

function countUp() {
    // if ($(document).scrollTop() > 200) {
    //     $('[data-count]').each(function() {
    //         var countTo = $(this).text();
    //         $({ countNum: 3 }).animate({
    //             countNum: 8000
    //         }, {
    //             duration: 8000,
    //             easing: 'linear',
    //             step: function() {
    //                 $(this).text(Math.floor(this.countNum));
    //             },
    //             complete: function() {
    //                 $(this).text(this.countNum);
    //                 //alert('finished');
    //             }
    //         });
    //     });
    // }
}

function gioithieu4Slide() {
    return new Swiper('.gioithieu-4 .content-item.active .swiper-container', {
        slidesPerView: 'auto',
        spaceBetween: 60,
        loop: true,
        speed: 1000,
        navigation: {

            nextEl: '.gioithieu-4 .swiper-right',
            prevEl: '.gioithieu-4 .swiper-left',
        },
        // autoplay: {
        //     delay: 4000
        // },
        // slidesPerView: 'auto',
        // centeredSlides: true,
        // effect: 'fade'
    })

}

function gioithieu4Tab() {
    $('.gioithieu-4 .main-nav .item').on('click', function() {
        $('.gioithieu-4 .main-nav .item').removeClass('active'),
            $(this).addClass('active')
        let i = $(this).attr('data-tab')
        $('.gioithieu-4 .main-content .content-item').removeClass('active')
        $('.gioithieu-4 .main-content .content-item[data-content=' + i + ']').addClass('active')
        gioithieu4Slide()
    })
}

function gioithieu5Slide() {
    return new Swiper('.gioithieu-5 .swiper-container', {
        slidesPerView: 3,
        spaceBetween: 30,
        speed: 1000,
        navigation: {

            nextEl: '.gioithieu-5 .swiper-right',
            prevEl: '.gioithieu-5 .swiper-left',
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1025: {
                slidesPerView: 2
            },
            576: {
                slidesPerView: 1
            }
        }
    })
}

function thanhTichHocSinh() {
    return new Swiper('.student-achievement .swiper-container', {
        slidesPerView: 3,
        spaceBetween: 30,
        loop: true,
        centeredSlides: true,
        speed: 1000,
        navigation: {

            nextEl: '.student-achievement .swiper-right',
            prevEl: '.student-achievement .swiper-left',
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1025: {
                slidesPerView: 1
            }
        }
    })
}

function phatTrienChuyenMon() {
    return new Swiper('.progress .swiper-container', {
        slidesPerView: 'auto',
        spaceBetween: 60,
        loop: true,
        speed: 1000,
        navigation: {

            nextEl: '.progress .swiper-right',
            prevEl: '.progress .swiper-left',
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1025: {
                slidesPerView: 1
            }
        }
    })
}

function tuyenDungSlide() {
    return new Swiper('.workplace .swiper-container', {
        slidesPerView: 'auto',
        spaceBetween: 60,
        loop: true,
        speed: 1000,
        navigation: {

            nextEl: '.workplace .swiper-right',
            prevEl: '.workplace .swiper-left',
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1025: {
                slidesPerView: 1
            }
        }
    })
}

function chuongTrinhHocSlide() {
    return new Swiper('.chuongtrinhhoc-4 .swiper-container', {
        slidesPerView: 'auto',
        spaceBetween: 60,
        loop: true,
        speed: 1000,
        navigation: {

            nextEl: '.chuongtrinhhoc-4 .swiper-right',
            prevEl: '.chuongtrinhhoc-4 .swiper-left',
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1025: {
                slidesPerView: 1
            }
        }
    })
}

function newDetailSlide() {
    return new Swiper('.news-detail .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 20,
        speed: 1000,
        navigation: {

            nextEl: '.news-detail .swiper-right',
            prevEl: '.news-detail .swiper-left',
        },
        autoplay: {
            delay: 4000
        },
        breakpoints: {
            1025: {
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
}

function contactMap() {
    var firstMap = $('.lienhe .dealer .item:first-child').attr('data-map')
    $('.lienhe .map iframe').attr('src', firstMap)
    $('.lienhe .dealer .item').on('click', function() {
        $('.lienhe .dealer .item').removeClass('active')
        var e = $(this).attr('data-map')
        $('.lienhe .map iframe').attr('src', e)
        $(this).addClass('active')
    })
}
$(document).ready(function() {
    header.searchBox()
    header.toggleButton()
    header.headerMapping()
    header.heThongTruongHoc()
    bgImg()
    transformHome2();
    studentActiveSlide();
    parentsActiveSlide();
    otherNewsSlide();
    homeBanner();
    home1Slide()
    home4Tab()
    home7Tab()
    home5Slide()
    home6Slide()
    home7Slide()
    home7Nav()
    gioithieu1Slide()
    gioithieu4Slide()
    gioithieu4Tab()
    gioithieu5Slide()
    thanhTichHocSinh()
    phatTrienChuyenMon()
    chuongTrinhHocTab()
    chuongTrinhHocSlide()
    tuyenDungSlide()
    newDetailSlide()
    countUp()
    contactMap()
    equalHeight('.home-4 .main-content .item a figure figcaption .text')
    equalHeight('.home-6 .item .desc')
    equalHeight('.assembly figure figcaption')
    $('.ungtuyen').on('click', function() {
        $('.form-apply').slideToggle();
    })
    $(".SocialShare").jsSocials({
            showLabel: false,
            showCount: false,
            shares: [{
                share: 'email',
                logo: 'fas fa-at'
            }, {
                share: 'twitter',
                logo: 'fab fa-twitter'
            }, {
                share: 'facebook',
                logo: 'fab fa-facebook-f'
            }, {
                share: 'googleplus',
                logo: 'fab fa-google-plus-g'
            }, {
                share: 'pinterest',
                logo: 'fab fa-pinterest-p'
            }]
        })
        // Header.toggleMenu();
        // Header.toggleSearchBox();
        // Header.moveContactInfo();
        // Header.moveLanguageBox();
        // Header.moveLogo();
        // Header.moveToggleMenu();
        // Header.moveMainMenu();
        // Header.moveSearchBox();
});
$(window).on('scroll', function() {
    countUp()
})