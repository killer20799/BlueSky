$(document).ready(function () {
	dropdownSelectHeader();
	const Header = {
		toggleSearchBox: function () {
			let searchIcon = $('.search-wrapper i')
			let searchBox = $('.search-box')
			searchIcon.on('click', function () {
				searchBox.toggleClass('active')
			})
		},
		toggleMenu: function () {
			let toggleMenu = $('header .toggle-menu')
			let menuParent = $('header .menu-parent')
			let contactinfo = $('header .contact-info')
			let backdrop = $('header .backdrop')
			let overflowHidden = $('html')
			toggleMenu.on('click', function () {
				toggleMenu.toggleClass('open')
				menuParent.toggleClass('active')
				contactinfo.toggleClass('active')
				backdrop.toggleClass('active')
				overflowHidden.toggleClass('active')
			})
		},
		moveContactInfo: function () {
			let moveContactInfo = new MappingListener({
				selector: 'header .contact-info',
				mobileWrapper: '.mobile-header',
				mobileMethod: 'appendTo',
				desktopWrapper: '.top-header-menu',
				desktopMethod: 'prependTo',
				breakpoint: 992,
			}).watch()
		},
		moveMainMenu: function () {
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
		moveToggleMenu: function () {
			let moveToggleMenu = new MappingListener({
				selector: 'header .toggle-menu',
				mobileWrapper: '.mobile-header',
				mobileMethod: 'appendTo',
				desktopWrapper: '.main-header-wrapper',
				desktopMethod: 'prependTo',
				breakpoint: 992,
			}).watch()
		},
		moveLanguageBox: function () {
			let moveLanguageBox = new MappingListener({
				selector: 'header .language',
				mobileWrapper: '.menu-parent',
				mobileMethod: 'appendTo',
				desktopWrapper: '.top-header-menu',
				desktopMethod: 'appendTo',
				breakpoint: 992,
			}).watch()
		},
		moveLogo: function () {
			let moveLogo = new MappingListener({
				selector: 'header .logo-wrapper',
				mobileWrapper: '.mobile-header',
				mobileMethod: 'appendTo',
				desktopWrapper: '.main-header-wrapper',
				desktopMethod: 'prependTo',
				breakpoint: 992,
			}).watch()
		},
		moveSearchBox: function () {
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
		}
		else {
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
