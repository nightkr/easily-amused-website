(function () {
    function updateSectionDisplay() {
        var sectionLinks = document.querySelectorAll(".sidebar .sections li a");
        var noVisibleBefore = true;
        sectionLinks.forEach(function (link) {
            var section = document.querySelector(link.hash);
            if (section === null) {
                return;
            }

            var linkListItem = link.parentElement;

            var isVisible = section.offsetTop <= window.scrollY + window.innerHeight
                && section.offsetTop + section.offsetHeight >= window.scrollY;
            if (isVisible && noVisibleBefore) {
                linkListItem.classList.add("current");
                noVisibleBefore = false;
            } else {
                linkListItem.classList.remove("current");
            }
        });
    }

    window.onscroll = updateSectionDisplay;
    window.onresize = updateSectionDisplay;
    updateSectionDisplay();
})();
