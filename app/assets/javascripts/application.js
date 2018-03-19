// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.10&appId=1795767700709083";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

// Compatibility with Turbolinks 5
(function($) {
  var fbRoot;

  function saveFacebookRoot() {
    if ($('#fb-root').length) {
      fbRoot = $('#fb-root').detach();
    }
  };

  function restoreFacebookRoot() {
    if (fbRoot != null) {
      if ($('#fb-root').length) {
        $('#fb-root').replaceWith(fbRoot);
      } else {
        $('body').append(fbRoot);
      }
    }

    if (typeof FB !== "undefined" && FB !== null) { // Instance of FacebookSDK
      FB.XFBML.parse();
    }
  };

  document.addEventListener('turbolinks:request-start', saveFacebookRoot)
  document.addEventListener('turbolinks:load', restoreFacebookRoot)
}(jQuery));

/* Toggle on navbar
When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function togglePosts() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

function backgroundOpacity() {
  var bodyContainer = document.getElementsByClassName('body-container');
  if(bodyContainer.style.opacity == '1') {
    bodyContainer.style.opacity = "0.1";
  }
  else {
    bodyContainer.style.opacity = "1";
  }
}
	