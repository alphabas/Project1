<style type="text/css">
  @import url("//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

.navbar-icon-top .navbar-nav .nav-link > .fa {
  position: relative;
  width: 36px;
  font-size: 24px;
}

.navbar-icon-top .navbar-nav .nav-link > .fa > .badge {
  font-size: 0.75rem;
  position: absolute;
  right: 0;
  font-family: sans-serif;
}

.navbar-icon-top .navbar-nav .nav-link > .fa {
  top: 3px;
  line-height: 12px;
}

.navbar-icon-top .navbar-nav .nav-link > .fa > .badge {
  top: -10px;
}

@media (min-width: 576px) {
  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

@media (min-width: 768px) {
  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

@media (min-width: 992px) {
  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

@media (min-width: 1200px) {
  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

</style>
<nav class="navbar navbar-icon-top navbar-expand-lg navbar-light bg-white d-none d-xs-none d-sm-none d-md-none d-lg-block " style="box-shadow: 1px 1px 8px 0px">
  <!-- <a class="navbar-brand" href="#">Haya</a> -->

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   
  <div class="collapse navbar-collapse" id="navbarSupportedContent" >
    <ul class="navbar-nav mr-auto" style="padding-left: 30px">
      <li class="nav-item" style="padding-top: 15px">
        <a class="navbar-brand" href="<?= base_url(); ?>"><img src="<?= base_url('outils/logo/haya.png') ?>" width="80px" >Blogs Haya</a>
      </li>

      <li class="nav-item" style="padding-top: 17px;">
        <a class="navbar-brand" href="<?= base_url();?>" width="80px" >About</a>
      </li>


       



        <li class="nav-item dropdown" style="padding-left: 30px">
        <a class="nav-link " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="nav100bar-toggler-icon">
            <!-- <span class="badge badge-primary">11</span> -->
          </i>
          <!-- Dropdown -->
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
     
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>

        </div>
      </li>
      
    </ul>
    <ul class="navbar-nav ">
      

       <li class="nav-item dropdown" style="padding-top: 10px;padding-left: -10px">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fa fa-user">
            <!-- <span class="badge badge-primary">11</span> -->
          </i>
          <!-- Dropdown -->
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="margin-left: -50px">
          <a class="dropdown-item" href="<?= base_url('Accueil/Mes_produits/') ?>">Element</a>
         <a class="dropdown-item" href="<?= base_url('Accueil/Mes_produits/') ?>">Compte</a>
         <a class="dropdown-item" href="<?= base_url('Accueil/Mes_produits/') ?>">Connexion</a>
        </div>
      </li>

      <li class="nav-item ">
        <a class="nav-link" href="#">
          <!-- <i class="fa fa-bell">
            <span class="badge badge-info">11</span>
          </i> -->
        </a>
      </li>
     <!--  <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fa fa-user">
          </i>
         
        </a>
      </li> -->
    </ul>
   
  </div>
</nav>