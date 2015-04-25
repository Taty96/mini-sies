    <!-- jQuery, loaded in the recommended protocol-less way -->
    <!-- more http://www.paulirish.com/2010/the-protocol-relative-url/ -->
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <!-- define the project's URL (to make AJAX calls possible, even when using this in sub-folders etc) -->
    <script>
        //$.material.init()
        var url = "<?php echo URL; ?>";
    </script>

    <!-- our JavaScript -->
    <script src="<?php echo URL; ?>js/application.js"></script>
     <!-- Open source code -->
    <script>
      window.page = window.location.hash || "#about";

      $(document).ready(function() {
        if (window.page != "#about") {
          $(".menu").find("li[data-target=" + window.page + "]").trigger("click");
        }
      });

      $(window).on("resize", function() {
        $("html, body").height($(window).height());
        $(".main, .menu").height($(window).height() - $(".header-panel").outerHeight());
        $(".pages").height($(window).height());
      }).trigger("resize");

      $(".menu li").click(function() {
        // Menu
        if (!$(this).data("target")) return;
        if ($(this).is(".active")) return;
        $(".menu li").not($(this)).removeClass("active");
        $(".page").not(page).removeClass("active").hide();
        window.page = $(this).data("target");
        var page = $(window.page);
        window.location.hash = window.page;
        $(this).addClass("active");


        page.show();

        var totop = setInterval(function() {
          $(".pages").animate({scrollTop:0}, 0);
        }, 1);

        setTimeout(function() {
          page.addClass("active");
          setTimeout(function() {
            clearInterval(totop);
          }, 1000);
        }, 100);
      });

      function cleanSource(html) {
        var lines = html.split(/\n/);

        lines.shift();
        lines.splice(-1, 1);

        var indentSize = lines[0].length - lines[0].trim().length,
            re = new RegExp(" {" + indentSize + "}");

        lines = lines.map(function(line){
          if (line.match(re)) {
            line = line.substring(indentSize);
          }

          return line;
        });

        lines = lines.join("\n");

        return lines;
      }

      $("#opensource").click(function() {
        $.get(window.location.href, function(data){
          var html = $(data).find(window.page).html();
          html = cleanSource(html);
          $("#source-modal pre").text(html);
          $("#source-modal").modal();
        });
      });
    </script>

    <!-- Twitter Bootstrap -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <!-- Material Design for Bootstrap -->
    <script src="<?php echo URL; ?>dist/js/material.min.js"></script>
    <script src="<?php echo URL; ?>dist/js/ripples.min.js"></script>
    <script>
      $.material.init();
    </script>


    <!-- Sliders -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/noUiSlider/6.2.0/jquery.nouislider.min.js"></script>
    <script>
      $(function() {
        $.material.init();
        $(".shor").noUiSlider({
          start: 40,
          connect: "lower",
          range: {
            min: 0,
            max: 100
          }
        });

        $(".svert").noUiSlider({
          orientation: "vertical",
          start: 40,
          connect: "lower",
          range: {
            min: 0,
            max: 100
          }
        });
      });
    </script>

    <!-- Dropdown.js -->
    <script src="https://cdn.rawgit.com/FezVrasta/dropdown.js/master/jquery.dropdown.js"></script>
</body>
</html>
