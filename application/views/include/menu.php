
        <header class="bg-white style2 pt-2 pb-0 bg-home d-sm-block d-md-block d-lg-none d-xs-block">
          <div class="row">
            <div class="col-sm-4 text-left pos-top">
              <a href="#" class="menu-btn mt-0" id="sidebar-right"><span></span></a>
            </div>
            <div class="col-sm-4 text-center pos-top">
              <a href="#" class=" d-block mt-1" style="width: 100%"><img src="<?= base_url('outils/logo/haya.png') ?>" width="80px" ></a>
            </div>
            <div class="col-sm-4 text-right pos-top">
              <a href="#" data-toggle="modal" data-target="#searchBlock" class="cart-btn ">
                <i class="ti-search"></i>
                <!-- <span>1</span> -->
              </a>
              
             <!--  <a href="shop-cart.html" class="cart-btn mt-1">
                <i class="ti-shopping-cart"></i><span>1</span>
              </a> -->
                    </div>
              <?php if($this->router->method=="Mes_produits" || $this->router->method=="Mes_produits"){
                # code...
              
              }else{ ?>
            <div class="col-sm-12 text-left pos-top">
                      <!-- <h2 class="titleText text-left mt-4 mb-2">Haya Africa </h2> -->
                    </div>
                    <!-- <div class="col-sm-12 text-left mt-2 mb-2 pos-top">
                      <div class="form-content style1">
                        <form action="#">
                            <input type="text" class="form-control bg-white" placeholder="Seacrh..." style="box-shadow: 0px 0px 2px">
                        </form>
                      </div>
                  </div> -->
                <?php } ?>
                  </div>
        </header>


      