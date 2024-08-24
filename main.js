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
	const mobileSidebarItems = document.querySelectorAll('.mobile-sidebar-item');
	const desktopSidebarItems = document.querySelectorAll('.desktop-sidebar-item');
	const sections = document.querySelectorAll('.section');
	console.log(mobileSidebarItems)
	console.log(desktopSidebarItems)
	console.log(sections)
	
	function highlightSidebarItem() {
		const scrollPosition = window.scrollY;

		sections.forEach((section, index) => {
			const sectionTop = section.offsetTop;
			const sectionHeight = section.clientHeight;

			if (scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight) {
					mobileSidebarItems.forEach(item => item.classList.remove("text-[#44567e]/80", "hover:underline", "decoration-2", "underline-offset-2", "decoration-[#44567e]/50", "hover:text-[#44567e]"));
					mobileSidebarItems[index].classList.add("text-[#44567e]/80", "hover:underline", "decoration-2", "underline-offset-2", "decoration-[#44567e]/50", "hover:text-[#44567e]");
					desktopSidebarItems.forEach(item => item.classList.remove("text-[#44567e]/80", "hover:underline", "decoration-2", "underline-offset-2", "decoration-[#44567e]/50", "hover:text-[#44567e]"));
					desktopSidebarItems[index].classList.add("text-[#44567e]/80", "hover:underline", "decoration-2", "underline-offset-2", "decoration-[#44567e]/50", "hover:text-[#44567e]");
			}
		});
	}

	window.addEventListener('scroll', highlightSidebarItem);
	highlightSidebarItem(); // Initial call to set the active item on page load
}

document.addEventListener('DOMContentLoaded', initApp)
document.addEventListener('DOMContentLoaded', highlightSidebar)