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
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets


$(document).ready(function() {
  document.addEventListener("turbolinks:load", function() {
    /**
     * This object controls the nav bar. Implement the add and remove
     * action over the elements of the nav bar that we want to change.
     *
     * @type {{flagAdd: boolean, elements: string[], add: Function, remove: Function}}
     */
    var myNavBar = {

      flagAdd: true,

      elements: [],

      init: function(elements) {
        this.elements = elements;
      },

      add: function() {
        if (this.flagAdd) {
          for (var i = 0; i < this.elements.length; i++) {
            document.getElementById(this.elements[i]).className += " fixed-theme";
          }
          this.flagAdd = false;
        }
      },

      remove: function() {
        for (var i = 0; i < this.elements.length; i++) {
          document.getElementById(this.elements[i]).className =
            document.getElementById(this.elements[i]).className.replace(/(?:^|\s)fixed-theme(?!\S)/g, '');
        }
        this.flagAdd = true;
      }

    };

    /**
     * Init the object. Pass the object the array of elements
     * that we want to change when the scroll goes down
     */
    myNavBar.init([
      "header",
      "header-container",
      "brand"
    ]);

    /**
     * Function that manage the direction
     * of the scroll
     */
    function offSetManager() {

      var yOffset = 0;
      var currYOffSet = window.pageYOffset;

      if (yOffset < currYOffSet) {
        myNavBar.add();
      } else if (currYOffSet == yOffset) {
        myNavBar.remove();
      }

    }

    /**
     * bind to the document scroll detection
     */
    window.onscroll = function(e) {
      offSetManager();
    }

    /**
     * We have to do a first detectation of offset because the page
     * could be load with scroll down set.
     */
    offSetManager();

    // $('.profilerightdiv').empty().justifiedImages({
    //   images: arts,
    //   rowHeight: 200,
    //   maxRowHeight: 400,
    //   thumbnailPath: function(photo, width, height) {
    //     var purl = photo.url_s;
    //     if (photo.url_n && (width > photo.width_s * 1.2 || height > photo.height_s * 1.2)) purl = photo.url_n;
    //     if (photo.url_m && (width > photo.width_n * 1.2 || height > photo.height_n * 1.2)) purl = photo.url_m;
    //     if (photo.url_z && (width > photo.width_m * 1.2 || height > photo.height_m * 1.2)) purl = photo.url_z;
    //     if (photo.url_l && (width > photo.width_z * 1.2 || height > photo.height_z * 1.2)) purl = photo.url_l;
    //     return purl;
    //   },
    //   getSize: function(photo) {
    //     return {
    //       width: photo.width_s,
    //       height: photo.height_s
    //     };
    //   },
    //   margin: 1
    // });
    // $(".profilerightdiv").justifiedGallery();


  });
});