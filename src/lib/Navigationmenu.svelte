<script>
    /* hide/show the navbar menu links when user clicks the menu icon*/
    function toggleMenuLinkVisibility() {
        var x = document.getElementById("myLinks");
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
    .topnav {
        overflow: hidden;
        background-color: white;
        position: relative;
    }

    .topnav img {
        height: 15px;
    }

    /* Hide the links inside the navigation menu (except for logo/home) */
    .topnav #myLinks {
        display: none;
    }

    /* Style navigation menu links */
    .topnav a {
        color: black;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
        display: block;
        text-align: right;
    }

    /* Style the hamburger menu */
    .topnav a.icon {
        background: white;
        position: absolute;
        right: 0;
        top: 0;
    }

    /* Add a green background color on mouse-over */
    .topnav a:hover {
        background-color: #a0d457;
    }

    /* Style the active link (or home/logo) */
    /*
    .active {
        background-color: #a0d457;
    }
    */

</style>

<!-- Load an icon library to show a hamburger menu (bars)-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<div class="topnav">
    <div>
        <p>Peaceful Nest Postpartum Care</p>
        <img src={nest} alt="Logo of Peaceful Nest, a nest with three eggs in it.">

    </div>
    
    <!--
    <a href="/" class="active"></a>
        Peaceful Nest Postpartum Care

    </a>
    -->
    <!-- Navigation links (hidden by default) -->
    <div id="myLinks">
      <a href="/">Home</a>
      <a href="/about">About</a>
      <a href="/services">Services</a>
      <a href="/contact">Contact</a>
    </div>
    <!-- "Hamburger menu" / "Bar icon" to toggle the navigation links -->
    <a class="icon" on:click={toggleMenuLinkVisibility}>
      <i class="fa fa-bars"></i>
    </a>
  </div>