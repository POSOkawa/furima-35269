window.addEventListener("load",function(){
  const priceInput = document.getElementById("price");
  
   priceInput.addEventListener("input", () => {
     const inputValue = priceInput.value;
    console.log(inputValue);
    const tesuuryo = document.getElementById("add-tax-price");
     tesuuryo.innerHTML = (Math.floor(inputValue * 0.1));
     
     const mouke = document.getElementById("profit");
     mouke.innerHTML = (Math.floor(inputValue * 0.9));
   })
  })
  