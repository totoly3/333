<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="h-100" lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
  <meta name="description" content="A growing collection of ready to use components for the CSS framework Bootstrap 5">
  <link rel="apple-touch-icon" sizes="180x180" href="resources/mainView/img/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="resources/mainView/img/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="resources/mainView/img/favicon-16x16.png">
  <link rel="icon" type="image/png" sizes="96x96" href="resources/mainView/img/favicon.png">
  <meta name="author" content="Holger Koenemann">
  <meta name="generator" content="Eleventy v2.0.0">
  <meta name="HandheldFriendly" content="true">
  <title>CHAx3 HARD-CHARAC</title>
  <link rel="stylesheet" href="resources/mainView/css/theme.min.css">

  <style>
    /* inter-300 - latin */
    @font-face {
      font-family: 'Inter';
      font-style: normal;
      font-weight: 300;
      font-display: swap;
      src: local(''),
        url('./fonts/inter-v12-latin-300.woff2') format('woff2'),
        /* Chrome 26+, Opera 23+, Firefox 39+ */
        url('./fonts/inter-v12-latin-300.woff') format('woff');
      /* Chrome 6+, Firefox 3.6+, IE 9+, Safari 5.1+ */
    }

    @font-face {
      font-family: 'Inter';
      font-style: normal;
      font-weight: 500;
      font-display: swap;
      src: local(''),
        url('./fonts/inter-v12-latin-500.woff2') format('woff2'),
        /* Chrome 26+, Opera 23+, Firefox 39+ */
        url('./fonts/inter-v12-latin-500.woff') format('woff');
      /* Chrome 6+, Firefox 3.6+, IE 9+, Safari 5.1+ */
    }

    @font-face {
      font-family: 'Inter';
      font-style: normal;
      font-weight: 700;
      font-display: swap;
      src: local(''),
        url('./fonts/inter-v12-latin-700.woff2') format('woff2'),
        /* Chrome 26+, Opera 23+, Firefox 39+ */
        url('./fonts/inter-v12-latin-700.woff') format('woff');
      /* Chrome 6+, Firefox 3.6+, IE 9+, Safari 5.1+ */
    }
    
    #fadejini1{
    	position:relative;
    	
    }
    #fadejini2,#fadejini3{
    	position:absolute;

    }
    
    #fadejini4{
    	position:relative;
    	top:1100px;
    	
    }
    
    //드롭다운
    .dropdown22 {
	  position: relative;
	  display: inline-block;
	  background-color: #EA4F4D;
	  text-decoration:none;
	  color:rgb(255, 255, 255);
	  font-size:15px;
	  font-weight:600;
	  border: none;
	}
	 
	.dropdown-content {
	  display: none;
	  border: 0px;
	  position: absolute;
	  background-color: rgb(255, 255, 255);
	  min-width: 160px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	  font-size:15px;
	}
	 
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	  font-size:15px;
	}
	.dropdown-content a:hover {background-color: #EA004D; color:white;font-size:15px;}
	.dropdown22:hover .dropdown-content {display: block;}
	.dropdown22:hover .dropbtn {background-color: #E42525; color:white;}
   
  </style>

</head>

<body data-bs-spy="scroll" data-bs-target="#navScroll">

  <nav id="navScroll" class="navbar navbar-expand-lg navbar-light fixed-top" tabindex="0"">
    <div class="container">
      <a class="navbar-brand pe-4 fs-4" href="/">
        <img src="resources/mainView/img/chalogo2.jpg">
      </a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <div class="dropdown22">
	          <li class="nav-item">
	            <a href="#top" class="nav-link" style="color:#EA4F4D; font-weight:bold">
	              Home
	            </a>
	          </li>
          </div>
        <div class="dropdown22">
	          <li class="nav-item">
	            <a class="nav-link" style="color:#EA4F4D; font-weight:bold">
	              Board
	            </a>
	           	  <div class="dropdown-content">
					  <a href="list.no">Notice</a>
					  <a href="list.fr">Free Board</a>
					  <a href="list.qu">Question</a>
				  </div>
	          </li>
          </div>
           <div class="dropdown22">
	          <li class="nav-item">
	            <a class="nav-link" style="color:#EA4F4D; font-weight:bold">
	              Character
	            </a>
	           	  <div class="dropdown-content">
					  <a href="list.ch">Character</a>
					  <a href="list.alltimelistgo">CHAx3 Award</a>
					  <a href="worldCupForm.ut">World Cup</a>
				  </div>
	          </li>
          </div>
          
          <div class="dropdown22">
	          <li class="nav-item">
	            <a href="playground.fr" class="nav-link" style="color:#EA4F4D; font-weight:bold">
	              Play Ground
	            </a>
	          </li>
          </div>
          
          <div class="dropdown22">
	          <li class="nav-item">
	            <a href="goodsMain.go" class="nav-link" style="color:#EA4F4D; font-weight:bold">
	              Goods &nbsp;
	            </a>
	          </li>
          </div>
          
       
          
       

        </ul>
       
        <a href="https://templatedeck.com" aria-label="back to CHAx3" class="link-dark pb-1 link-fancy me-2"> back to CHAx3 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
            class="bi bi-download ms-1" viewBox="0 0 16 16">
          </svg>
        </a>

      </div>
    </div>
  </nav>


  <script src="resources/mainView/js/bootstrap.bundle.min.js"></script>
  <script src="resources/mainView/js/aos.js"></script>
  <script>
    AOS.init({
      duration: 800, // values from 0 to 3000, with step 50ms
    });
  </script>

  <script>
    let scrollpos = window.scrollY;
    const header = document.querySelector(".navbar");
    const header_height = header.offsetHeight;

    const add_class_on_scroll = () => header.classList.add("scrolled", "shadow-sm");
    const remove_class_on_scroll = () => header.classList.remove("scrolled", "shadow-sm");

    window.addEventListener('scroll', function () {
      scrollpos = window.scrollY;

      if (scrollpos >= header_height) { add_class_on_scroll(); }
      else { remove_class_on_scroll(); }

      console.log(scrollpos);
    })
  </script>
  

</body>

</html>