<?php include VIEWPATH."includes/layouts/header.php"; ?>
<style>
  h2{
color:white;
  }
  label{
color:white;
  }
  .container {
    margin-top: 5%;
    width: 50%;
    background-color: #26262b9e;
    padding-top:2%;
    padding-bottom:2%;
  }
  .btn-primary {
    background-color: #673AB7;
}
  </style>

<div class="container">

  <center><h2>Enregistrement avant le chat</h2></center></br>
  <form class="form-horizontal" id="form_register" method="post" action="<?= base_url('Register/creer')?>">
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="name">Nom:</label>
	  
      <div class="col-sm-5">
        <input type="text" class="form-control" id="nom" placeholder="Entrer le nom" name="username" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="email">Email:</label>
	  
      <div class="col-sm-5">
        <input type="email" class="form-control" id="email" placeholder="Entrer email" name="email" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="pwd">Password:</label>
      <div class="col-sm-5">          
        <input type="password" class="form-control" id="password" placeholder="Entrer le password" name="password" required>
      </div>
    </div>
	 <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="number">Numero:</label>
      <div class="col-sm-5">
        <input type="text" class="form-control" id="number" placeholder="Entrer numero" name="number" required>
      </div>
    </div>
	 <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="name">Adresse:</label>
	  
      <div class="col-sm-5">
        <textarea class="form-control" id="address" placeholder="Enter Address" name="addresse" required></textarea>
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" id="btn_register" class="btn btn-primary">Enregistrement</button>
      </div>
    </div>
  </form>
</div>

</body>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<!-- 
<script>
  $(document).ready(function(){
    $('#btn_register').on('click',function(){
      var username = $('#nom').val();
      var email = $('#email').val();
      var pwd = $('#password').val();
      var num = $('#number').val();
      var add = $('#address').val();


      if(username == "" || email =="" || pwd=="" || num =="" || add ==""){
        swal("Error in the field!", "il y a de champs vide!", "error");
        return false;

       }

        else{
          $.ajax({
            url: '<?= base_url('Register/creer')?>',
            type: 'post',
            dataType:'json',
            data:$('#form_register').serialize(),
            success:function(data){
              console.log(data);
            },

          },6000)
        }


    })








  })
</script> -->






















</html>
