//UTILITIES FUNCTIONS

let alertFunction = (title, message,type) =>{
        swal(title, message, type);

}

let displayChampVide = () =>{
	let _message = {
                titre : "Erreur!",
                message : "Veuillez remplir tous les champs",
                type : "error"
            }
   alertFunction(_message.titre, _message.message, _message.type);
}
let displaydisponible = () =>{
	let _message1 = {
                titre : "Erreur!",
                message : "Video n'est pas disponible",
                type : "error"
            }
   alertFunction(_message1.titre, _message1.message, _message1.type);
}
let displaypswdsemblable = () =>{
    let _message = {
                titre : "Erreur!",
                message : "Le deux mots de passe ne sont pas semblable",
                type : "error"
            }
   alertFunction(_message.titre, _message.message, _message.type);
}


let loading = () =>{
	const base_url = $("#base_url").val();
	let _message = {
		title:"En cours...",
		message:"En attente",
		imageUrl: base_url+"loader/ajax-loader.gif"
		         }
	alertFunction(_message.title, _message.message,_message.imageUrl);
}

let displaySuccess = (title, message, typ) =>{
	let _message = {
                titre : title,
                message : message,
                type : typ
            }
   alertFunction(_message.titre, _message.message, _message.type);

}
let uploadPhoto = (idInputFile, cheminContent) => {

      const name = document.getElementById(""+idInputFile+"").files[0].name;
      const form_data = new FormData();
      const ext = name.split(".").pop().toLowerCase();
      const base_url = $('#base_url').val();
      let result ="";

      loading();


        if(jQuery.inArray(ext, ['pdf','jpg','png','gif','jpeg','PDF','JPG','PNG','JPEG',]) == -1)
        {
         displaySuccess("Error","Fichier image invalide","error");
         exit();
        }else{

          var oFReader = new FileReader();
          oFReader.readAsDataURL(document.getElementById(""+idInputFile+"").files[0]);
          var f = document.getElementById(""+idInputFile+"").files[0];

         var fsize = f.size||f.fileSize;

         if(fsize > 25000000)
         {
          displaySuccess("Error","Taille de fichier trop grande","error");//Taille du fichier grande
          exit();
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

   let uploadmusique = (idInputFile, cheminContent) => {
         const name = document.getElementById(""+idInputFile+"").files[0].name;
         const form_data = new FormData();
         const ext = name.split(".").pop().toLowerCase();
         const base_url = $('#base_url').val();
         let result ="";
         loading();
           if(jQuery.inArray(ext, ['mp3','wav','m4a','ogg','WAV','MP3','MP4','AVI','avi','mp4']) == -1)
           {
            displaySuccess("Error","Fichier  invalide","error");
            exit();
           }else{
             var oFReader = new FileReader();
             oFReader.readAsDataURL(document.getElementById(""+idInputFile+"").files[0]);
             var f = document.getElementById(""+idInputFile+"").files[0];

            var fsize = f.size||f.fileSize;

            if(fsize >1000000000)
            {
             displaySuccess("Error","Taille de fichier trop grande","error");
             exit();
            }else{

               form_data.append(""+idInputFile+"", document.getElementById(""+idInputFile+"").files[0]);
               form_data.append(""+cheminContent+"",$("#"+cheminContent+"").val());

               $.ajax({
                   async:false,
                   url:""+base_url+"Upload/upload_content1",
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
   let uploadmusique1 = (idInputFile, cheminContent) => {
         const name = document.getElementById(""+idInputFile+"").files[0].name;
         const form_data = new FormData();
         const ext = name.split(".").pop().toLowerCase();
         const base_url = $('#base_url').val();
         let result ="";
         loading();
           if(jQuery.inArray(ext, ['mp3','wav','m4a','ogg','WAV','MP3','MP4','AVI','avi','mp4']) == -1)
           {
            displaySuccess("Error","Fichier audio invalide","error");
            exit();
           }else{
             var oFReader = new FileReader();
             oFReader.readAsDataURL(document.getElementById(""+idInputFile+"").files[0]);
             var f = document.getElementById(""+idInputFile+"").files[0];

            var fsize = f.size||f.fileSize;

            if(fsize >25000000)
            {
             displaySuccess("Error","Taille de fichier trop grande","error");
             exit();
            }else{

               form_data.append(""+idInputFile+"", document.getElementById(""+idInputFile+"").files[0]);
               form_data.append(""+cheminContent+"",$("#"+cheminContent+"").val());

               $.ajax({
                   async:false,
                   url:""+base_url+"Upload/upload_content2",
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

   let uploadvideo = (idInputFile, cheminContent) => {

         const name = document.getElementById(""+idInputFile+"").files[0].name;
         const form_data = new FormData();
         const ext = name.split(".").pop().toLowerCase();
         const base_url = $('#base_url').val();
         let result ="";
         loading();
           if(jQuery.inArray(ext, ['MP4','AVI','avi','mp4']) == -1)
           {
            displaySuccess("Error","Fichier video invalide","error");
            exit();
           }else{

             var oFReader = new FileReader();
             oFReader.readAsDataURL(document.getElementById(""+idInputFile+"").files[0]);
             var f = document.getElementById(""+idInputFile+"").files[0];

            var fsize = f.size||f.fileSize;

            if(fsize >65000000)
            {
             displaySuccess("Error","Taille de fichier video trop grande","error");//Taille du fichier grande
             exit();
            }else{

               form_data.append(""+idInputFile+"", document.getElementById(""+idInputFile+"").files[0]);
               form_data.append(""+cheminContent+"",$("#"+cheminContent+"").val());

               $.ajax({
                   async:false,
                   url:""+base_url+"Upload/upload_content2",
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
