const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
  const form = document.getElementById("charge-form");
  form.addEventListener("submit", (e) => {
    e.preventDefault();

    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);

    const card = {
      number: formData.get("furima_order[number]"),
      cvc: formData.get("furima_order[code]"),
      exp_month: formData.get("furima_order[month]"),
      exp_year: `20${formData.get("furima_order[year]")}`,
    };
    console.log(card)
    Payjp.createToken(card, (status, response) => {
      if (status == 200) {
        const token = response.id;
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input value=${token} name='token'>`;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
        console.log(token)
      }
      document.getElementById("number").removeAttribute("name");
      document.getElementById("code").removeAttribute("name");
      document.getElementById("month").removeAttribute("name");
      document.getElementById("year").removeAttribute("name");

      document.getElementById("charge-form").submit();
    });
  });
};

window.addEventListener("load", pay);