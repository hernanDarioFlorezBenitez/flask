(function(){

    const btnEliminacion=document.querySelectorAll(".btnEliminacion");

    btnEliminacion.forEach(btn => {
        btn.addEventListener('click',(e)=>{
            const confirmacion=confirm('¿seguro de eliminar el item?');
            if(!confirmacion){
                e.preventDefault();
            }

        });
    });

})();