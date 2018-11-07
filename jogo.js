function GerarStatus(){
        var Barracao = Math.random()*(10) + 55;
        var Comunidade = Math.random()*(10) + 55;
        var Imprensa = 180 - (Barracao + Comunidade);

        Barracao = parseInt(Barracao);
        Comunidade = parseInt(Comunidade);
        Imprensa = parseInt(Imprensa);

        document.getElementById('Barracao').innerHTML = Barracao
        document.getElementById('Barracao').style.width = Barracao+"%"
        window.localStorage.setItem('Barracao',Barracao)

        document.getElementById('Comunidade').innerHTML = Comunidade
        document.getElementById('Comunidade').style.width = Comunidade+"%"

        document.getElementById('Imprensa').innerHTML = Imprensa
        document.getElementById('Imprensa').style.width = Imprensa+"%"

        window.localStorage.setItem('rodada',0);
      }

      /*Função para adicionar uma rodada e levar para a próxima-->*/

      function proxsem(){
        var rodada = parseInt(window.localStorage.getItem('rodada'))
        rodada = rodada + 1
        window.localStorage.setItem('rodada',rodada);
        switch(rodada){
        case 1: 
        alert('Escolha do Enredo')
        break
        case 2: 
        alert('Rodada padrão')
        break
        default:
        alert(rodada)
      }

       /*(WIP) tentando jogar ação de recalcular progress bars dps da ação proxsem()-->*/

      if(document.getElementById('action1')==active){
        var B = parseInt(window.localStorage.getItem('Barracao'))
         B = B + 4
         if (B>= 100) {
          B = 100
         } else {
          B
         }
        document.getElementById('Barracao').innerHTML = B
        document.getElementById('Barracao').style.width = B+"%"
        window.localStorage.setItem('Barracao',B)        }

      }


      /* Função para somar progress no Barracão*/
       function ActionB(){
         var B = parseInt(window.localStorage.getItem('Barracao'))
         B = B + 4
         if (B>= 100) {
          B = 100
         } else {
          B
         }
        document.getElementById('Barracao').innerHTML = B
        document.getElementById('Barracao').style.width = B+"%"
        window.localStorage.setItem('Barracao',B)        }



      /* Função para somar progress na Comunidade*/
      function ActionC(){
        var C = parseInt(document.getElementById('Comunidade').style.width)
        C = C + 4
        if (C >= 100) {
        C = 100
        } else {
          C        }
        document.getElementById('Comunidade').innerHTML = C
        document.getElementById('Comunidade').style.width = C+"%"
        window.localStorage.setItem('Comunidade',C)
      }

      /*Função para somar progress na Imprensa*/
      function ActionI(){
        var I = parseInt(document.getElementById('Imprensa').style.width)
        I = I + 4
        if (I >= 100) {
        I = 100
        } else {
          I
        }
        document.getElementById('Imprensa').innerHTML = I
        document.getElementById('Imprensa').style.width = I+"%"
        window.localStorage.setItem('Imprensa',I)
      }

