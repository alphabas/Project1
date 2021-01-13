  </div>


  
<div class="footer">
  <!-- <h1>Footer</h1> -->
</div>
<script type="text/javascript">
  function retour() {
    window.history.back();
  }
</script>
<!-- Placed js at the end of the document so the pages load faster -->
  <script src="<?= base_url() ?>outils/js/plugin.js"></script>
  <script src="<?= base_url() ?>outils/js/main.js"></script>



<!--common scripts for all pages-->
<script src="<?= base_url() ?>outils/js/scripts.js"></script>
<script src="<?=base_url() ?>js/sweet.min.js"></script>
 <!-- <script src="<?=base_url() ?>js/MyLibrairieJs.js"></script> -->

<script type="text/javascript">
  function alertFunction(title, message,type){
        swal(title, message, type);

}

function displayChampVide(){
  var _message = {
                titre : "Erreur!",
                message : "Veuillez remplir tous les champs",
                type : "error"
            }
   alertFunction(_message.titre, _message.message, _message.type);
}

function displayChampVide1(){
  var _message = {
                titre : "Erreur!",
                message : "Veuillez remplir votre numéro de la carte!",
                type : "error"
            }
   alertFunction(_message.titre, _message.message, _message.type);
}


function loading(){
  var base_url = $("#base_url").val();
  var _message = {
    title:"En cours...",
    message:"En attente",
    imageUrl: base_url+"loader/ajax-loader.gif"
             }
  alertFunction(_message.title, _message.message,_message.imageUrl);
}

function displaySuccess(title, message, typ){
  var _message = {
                titre : title,
                message : message,
                type : typ
            }
   alertFunction(_message.titre, _message.message, _message.type);

}

   function uploadPhoto(idInputFile, cheminContent){
      
      var name = document.getElementById(""+idInputFile+"").files[0].name;
      var form_data = new FormData();
      var ext = name.split(".").pop().toLowerCase();
      var base_url = $('#base_url').val();
      var result ="";

      loading();
        

        if(jQuery.inArray(ext, ['jpg','png','gif','jpeg','JPG','PNG','GIF','JPEG']) == -1) 
        {
         displaySuccess("Error","Fichier invalide","error");
        }else{

          var oFReader = new FileReader();
          oFReader.readAsDataURL(document.getElementById(""+idInputFile+"").files[0]);
          var f = document.getElementById(""+idInputFile+"").files[0];

         var fsize = f.size||f.fileSize;

         if(fsize > 5000000)
         {
          displaySuccess("Error","Taille de fichier trop grande","error");
          exit();
          //Taille du fichier grande
         }else{

            form_data.append(""+idInputFile+"", document.getElementById(""+idInputFile+"").files[0]);
            form_data.append(""+cheminContent+"",$("#"+cheminContent+"").val());                           
                                        
            $.ajax({
                async:false,
                url:""+base_url+"Upload/upload_content",
                method:"POST",
                data: form_data,
                contentType: false,
                cache: false,
                processData: false,
                   
                success:function(data)
                {   
                    result = data;
                }
            });
            
          }
     }
     return result;
                                
}


</script>
<!--dynamic table-->
<script type="text/javascript" language="javascript" src="<?= base_url() ?>outils/js/advanced-datatable/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="<?= base_url() ?>outils/js/data-tables/DT_bootstrap.js"></script>
<!--dynamic table initialization -->
<script src="<?= base_url() ?>outils/js/dynamic_table_init.js"></script>
<script src="<?= base_url() ?>outils/slick/slick.js"></script>
<script type="text/javascript">
      $(document).on('ready', function() {
  $(".variable").slick({
        dots: true,
        infinite: true,
        variableWidth: true
      });
     $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1
      });
     $(".regular2").slick({
        dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        autoplay:true,
          autoplaySpeed:1500,
      });
      $(".vertical-center-2").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 2,
        slidesToScroll: 2
      });

        $(".carousel").carousel({
          interval: 3000,
          cycle: true
        });

    });

</script>
</body>
</html>
