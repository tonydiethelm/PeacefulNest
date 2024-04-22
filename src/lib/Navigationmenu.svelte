<script>
    /* hide/show the navbar menu links when user clicks the menu icon*/
    function toggleMenuLinkVisibility() {
        var x = document.getElementById("myLinksDiv");
        if (x.style.display === "block") {
            x.style.display = "none";
        } else {
            x.style.display = "block";
        }
    } 

    import nest from './assets/nest.png';
    
</script>

<style>
    /* Style the navigation menu */
    .topNavDiv {
        overflow: hidden;
        background-color: white;
        position: relative;
    }

    #picAndTextDiv {
        display: inline-flex;
        font-size: 25px;
    }

    #picAndTextDiv img {
        height: 100px;
    }

    /* Hide the links inside the navigation menu (except for logo/home) */
    #myLinksDiv {
        display: none;
    }

    /* Style navigation menu links */
    .topNavDiv a {
        color: black;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
        display: block;
        text-align: right;
    }

    /* Style the hamburger menu */
    #icon {
        background: white;
        position: absolute;
        right: 0;
        top: 0;
        font-size: xx-large;
    }

    /* Add a green background color on mouse-over */
    .topNavDiv a:hover {
        background-color: #a0d457;
    }

    /* If the screen is big...*/
    @media screen and (min-width: 1000px) {
        /* hide the hamburger*/
        #icon{
            display: none;
        }
        /* show the links*/
        .topNavDiv #myLinksDiv {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .topNavDiv a {
            
            display: inline;

        }

    }
    

</style>

<!-- Load an icon library to show a hamburger menu (bars)-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<div class="topNavDiv">
    <div id=picAndTextDiv>
        <img src={nest} alt="Logo of Peaceful Nest, a nest with three eggs in it.">
        <p>Peaceful Nest Postpartum Care</p>
        

    </div>
    
    <!--
    <a href="/" class="active"></a>
        Peaceful Nest Postpartum Care

    </a>
    -->
    <!-- Navigation links (hidden by default) -->
    <div id="myLinksDiv">
      <a href="/">Home</a>
      <a href="/about">About</a>
      <a href="/services">Services</a>
      <a href="/contact">Contact</a>
    </div>
    <!-- "Hamburger menu" / "Bar icon" to toggle the navigation links -->
    <a id="icon" on:click={toggleMenuLinkVisibility}>
      <i class="fa fa-bars"></i>
    </a>
  </div>