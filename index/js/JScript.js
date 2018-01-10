
		    function menu_show(flag) {
		        document.getElementById("one").style.display = "none";
		        document.getElementById("two").style.display = "none";
		        document.getElementById("three").style.display = "none";
		        document.getElementById("four").style.display = "none";
		        document.getElementById(flag).style.display = "block";
		    }

             function displaySubMenu(li) {
                 var subMenu = li.getElementsByTagName("ul")[0];
                 subMenu.style.display = "block";
             }

             function hideSubMenu(li) {
                 var subMenu = li.getElementsByTagName("ul")[0];
                 subMenu.style.display = "none";
             }
             $(".pic ul li").hover(function () {
                 $(this).stop(true).animate({ width: "789px" }, 500).siblings().stop(true).animate({ width: "100px" }, 500);
             });