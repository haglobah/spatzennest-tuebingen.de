const initApp = () => {
	const hamburgerBtn = document.getElementById('hamburger-button')
	const mobileMenu = document.getElementById('mobile-menu')

	const toggleMenu = () => {
		mobileMenu.classList.toggle('hidden')
		mobileMenu.classList.toggle('flex')
	}

	hamburgerBtn.addEventListener('click', toggleMenu)
	mobileMenu.addEventListener('click', toggleMenu)
}

const highlightSidebar = () => {
	const sidebarItems = document.querySelectorAll('.sidebar-item');
	const sections = document.querySelectorAll('.section');

	function highlightSidebarItem() {
			const scrollPosition = window.scrollY;

			sections.forEach((section, index) => {
					const sectionTop = section.offsetTop;
					const sectionHeight = section.clientHeight;

					if (scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight) {
							sidebarItems.forEach(item => item.classList.remove('active'));
							sidebarItems[index].classList.add('active');
					}
			});
	}

	window.addEventListener('scroll', highlightSidebarItem);
	highlightSidebarItem(); // Initial call to set the active item on page load
}

document.addEventListener('DOMContentLoaded', initApp)
document.addEventListener('DOMContentLoaded', highlightSidebar)