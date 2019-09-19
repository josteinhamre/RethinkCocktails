const selectedItems = () => {
  let itemList = document.getElementById("cocktail_ingredient_ids");
  let ingredientDescriptions = document.querySelector('.ingredient_descriptions')
  console.log(ingredientDescriptions)

  itemList.addEventListener("click", (event) => {
    let list = itemList.selectedOptions
      ingredientDescriptions.innerHTML = ""
    for (let item of list) {
      ingredientDescriptions.insertAdjacentHTML('beforeend', `<label class='form-control-label string required' for=cocktail[${item.value}]>How much ${item.innerText} should your cocktail have?<abbr title='required'>*</abbr></label><input class='form-control string required' type='text' name=cocktail[${item.value}] id=cocktail[${item.value}]>`);
    };
  });
};

export { selectedItems };
