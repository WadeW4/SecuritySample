<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <title>Home page</title>

        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
        <link href="${pageContext.request.contextPath}/resources/css/jquery.dataTables.css" type="text/css"
              rel="stylesheet"/>
        <link href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" type="text/css" rel="stylesheet"/>
        <link href="${pageContext.request.contextPath}/resources/css/jquery-ui.structure.css" type="text/css"
              rel="stylesheet"/>
        <link href="${pageContext.request.contextPath}/resources/css/jquery-ui.theme.css" type="text/css" rel="stylesheet"/>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/docs.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jssor.slider.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/ie10-viewport-bug-workaround.js"></script>
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="${pageContext.request.contextPath}/resources/js/SecuritySampleIndex.js"></script>
    </head>
    <body>
        <h2>Hello World!</h2>

        <div class="navbar-wrapper">
            <div class="container">

                <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="margin-bottom: 0px;">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                                    aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="http://www.jssor.com/index.html">Bootstrap Carousel</a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="http://www.jssor.com/index.html">Home</a></li>
                                <li><a href="http://www.jssor.com/demos/index.html">Demos</a></li>
                                <li><a href="http://www.jssor.com/skins/index.html">Skins</a></li>
                                <li><a href="http://www.jssor.com/development/index.html">Development</a></li>
                                <li><a href="http://www.jssor.com/download.html">Download</a></li>
                                <li><a href="http://www.jssor.com/support.html">Support</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

            </div>
        </div>

        <div style="min-height: 50px;">
            <!-- Jssor Slider Begin -->
            <!-- You can move inline styles to css file or css block. -->
            <!-- ================================================== -->
            <div id="slider1_container" style="display: none; position: relative; margin: 0 auto;
                top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
                <!-- Loading Screen -->
                <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                        top: 0px; left: 0px; width: 100%; height: 100%;">
                    </div>
                    <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center;
                        top: 0px; left: 0px; width: 100%; height: 100%;">
                    </div>
                </div>
                <!-- Slides Container -->
                <div u="slides"
                     style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1300px; height: 500px; overflow: hidden;">
                    <div>
                        <img u="image" src2="../img/1920/red.jpg"/>
                    </div>
                    <div>
                        <img u="image" src2="../img/1920/purple.jpg"/>
                    </div>
                    <div>
                        <img u="image" src2="../img/1920/blue.jpg"/>
                    </div>
                </div>

                <!-- bullet navigator container -->
                <div u="navigator" class="jssorb21" style="position: absolute; bottom: 26px; left: 6px;">
                    <!-- bullet navigator item prototype -->
                    <div u="prototype"
                         style="POSITION: absolute; WIDTH: 19px; HEIGHT: 19px; text-align:center; line-height:19px; color:White; font-size:12px;"></div>
                </div>
                <!-- Arrow Left -->
                    <span u="arrowleft" class="jssora21l" style="width: 55px; height: 55px; top: 123px; left: 8px;">
                    </span>
                <!-- Arrow Right -->
                    <span u="arrowright" class="jssora21r" style="width: 55px; height: 55px; top: 123px; right: 8px">
                    </span>
                <!-- Arrow Navigator Skin End -->
                <a style="display: none" href="http://www.jssor.com">Bootstrap Slider</a>
            </div>
            <!-- Jssor Slider End -->
        </div>

        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->

        <div class="container marketing">

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">This page runs <a href="http://getbootstrap.com" target="_blank"
                                                                     rel="nofollow">Bootstrap</a> with Jssor Slider.</h2>

                    <p class="lead">Use Jssor Slider as a compoment of Bootstrap is extremly easy. Given a carousel you worked
                        out, to integrate it with Bootstrap, you can just copy javascript and html code and paste it into your
                        page. This page is a simple demo, please view source of this page or download <a
                                href="http://www.jssor.com/bootstrap/download-bootstrap-carousel-slider-example.html">Bootstrap
                            Carousel Slider Example</a>.</p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto"
                         alt="Generic placeholder image">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-5">
                    <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto"
                         alt="Generic placeholder image">
                </div>
                <div class="col-md-7">
                    <h2 class="featurette-heading">Javascript Code</h2>

                    <div class="lead" style="background-color:#f0f0f0; border: 1px dashed #000; white-space: nowrap;">
                            <pre style="margin:0px;">
        &lt;script type="text/javascript" src="../js/jssor.slider.mini.js"&gt;&lt;/script&gt;
        &lt;script&gt;
            jQuery(document).ready(function ($) {
                var options = {
                    ..
                };

                $("#slider1_container").css("display", "block");
                var jssor_slider1 = new $JssorSlider$("slider1_container", options);
                ...
            });
        &lt;/script&gt;</pre>
                    </div>
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">HTML Code</h2>

                    <div class="lead" style="background-color:#f0f0f0; border: 1px dashed #000; white-space: nowrap;">
                            <pre style="margin:0px;">
        &lt;div style="min-height: 50px;"&gt;
            &lt;!-- Jssor Slider Begin --&gt;
            &lt;div id="slider1_container" style="display: none; position: relative; margin: 0 auto; width: 980px; height: 380px; overflow: hidden;"&gt;
                ...
            &lt;/div&gt;
            &lt;!-- Jssor Slider End --&gt;
        &lt;/div&gt;</pre>
                    </div>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto"
                         alt="Generic placeholder image">
                </div>
            </div>

            <hr class="featurette-divider">

            <!-- /END THE FEATURETTES -->
            <!-- FOOTER -->
            <footer>
                <p class="pull-right"><a href="#">Back to top</a></p>

                <p>&copy; Jssor Slider 2009 - 2014. &middot; <a href="#">Privacy</a> &middot; </p>
            </footer>

        </div>
        <!-- /.container -->
    </body>
</html>
