const quantityInput = document.querySelector("#valueTotal.quantity__number");
const quantityDecreaseButton = document.querySelector(".quantity__value.decrease");
const quantityIncreaseButton = document.querySelector(".quantity__value.increase");
const cart = document.querySelector('.minicart__product');
const itemCountProduct = document.querySelector('.items__count.__cart');
const itemCountProduct2 = document.querySelector('.items__count.style2.__cart');
let btnRemoves = document.querySelectorAll('.minicart__product--remove');
if (!localStorage.getItem("carts")) {
    // Nếu chưa tồn tại, khởi tạo một mảng rỗng và lưu vào localStorage
    localStorage.setItem("carts", JSON.stringify([]));
}
var cartsProducts = JSON.parse(localStorage.getItem("carts"));
console.log(quantityDecreaseButton)
function decrease(){
    const currentQuantity = Number(quantityInput.value);

    if (currentQuantity > 1) {
        quantityInput.value = currentQuantity - 1;
    }
}
// quantityDecreaseButton.addEventListener("click", () => {
//     console.log(1)
//     const currentQuantity = Number(quantityInput.value);
//     if (currentQuantity > 1) {
//         quantityInput.value = currentQuantity - 1;
//     }
// });
// console.log(quantityIncreaseButton)
//

function increase(){
    quantityInput.value = Number(quantityInput.value) + 1;
}
// quantityIncreaseButton.addEventListener("click", () => {
//     console.log(2)
//     quantityInput.value = Number(quantityInput.value) + 1;
// });

const btnCart = document.querySelector('#addCartDetail');
const NameDetail = document.querySelector('.product__details--info__title');
const viewPriceDetail = document.querySelector('.current__price').innerText;
const viewPriceOld = document.querySelector('.old__price').innerText;
const priceDetail = document.querySelector('#priceCurrent');
const priceCurrentOld = document.querySelector('#priceCurrentOld');
const imageDetail = document.querySelector('#srcImage');
const idProduct = document.querySelector('#idProduct');
const cateID = document.querySelector('#cateID');

btnCart.addEventListener('click',() => {
    const objProduct = {
        idProduct : idProduct.value,
        nameProductDetail : NameDetail.innerText,
        categoriesId : +cateID.value,
        price : +priceDetail.value,
        imageDetail : imageDetail.value,
        viewPriceDetail : viewPriceDetail,
        viewPriceOld : viewPriceOld,
        numberOf : +quantityInput.value,
    }

    var isProductExist = false;

    for (var i = 0; i < cartsProducts.length; i++) {
        if (cartsProducts[i].idProduct === objProduct.idProduct) {
            isProductExist = true;
            // Kiểm tra giá trị của numberOf
            if (objProduct.numberOf === 1) {
                // Nếu numberOf là 1, chỉ tăng giá trị lên 1
                cartsProducts[i].numberOf += 1;
            } else {
                // Nếu numberOf lớn hơn 1, cộng giá trị vào numberOf hiện tại
                cartsProducts[i].numberOf += objProduct.numberOf;
            }
            break;
        }
    }

    if (!isProductExist) {
        cartsProducts.push(objProduct);
    }
    localStorage.setItem("carts", JSON.stringify(cartsProducts));
    // const product = `
    //   <div class="minicart__product--items d-flex">
    //             <div class="minicart__thumb">
    //                 <a href="product-details.html"><img src="../${objProduct.imageDetail}" alt="prduct-img"></a>
    //             </div>
    //             <div class="minicart__text">
    //                 <h3 class="minicart__subtitle h4"><a href="product-details.html">${objProduct.nameProductDetail}</a></h3>
    //                 <div class="minicart__price">
    //                     <span class="current__price">${viewPriceDetail}</span>
    //                     <span class="old__price">${viewPriceOld}</span>
    //                 </div>
    //                 <div class="minicart__text--footer d-flex align-items-center">
    //                     <div class="quantity__box">
    //                         <button type="button" class="quantity__value decrease" onclick="decrease()">-</button>
    //                         <label>
    //                             <input type="number" class="quantity__number" value="${objProduct.numberOf}" id="valueTotal" />
    //                             <input type="hidden" id="srcImage" value="">
    //                             <input type="hidden" id="priceCurrent" value="">
    //                             <input type="hidden" id="cateID" value="">
    //                         </label>
    //                         <button type="button" class="quantity__value increase" onclick="increase()">+</button>
    //                     </div>
    //                     <button class="minicart__product--remove">Remove</button>
    //                 </div>
    //             </div>
    //         </div>
    // `
    // cart.innerHTML += product;

    renderProducts(cartsProducts);
})
console.log()
function renderProducts(obj){
    const html = obj.map((value) => {
        return `  <div class="minicart__product--items d-flex" id="products__${value.idProduct}">
                <div class="minicart__thumb">
                    <a href="product-details.html"><img src="../${value.imageDetail}" alt="prduct-img"></a>
                </div>
                <div class="minicart__text">
                    <h3 class="minicart__subtitle h4"><a href="product-details.html">${value.nameProductDetail}</a></h3>
                    <div class="minicart__price">
                        <span class="current__price">${value.viewPriceDetail}</span>
                        <span class="old__price">${value.viewPriceOld}</span>
                    </div>
                    <div class="minicart__text--footer d-flex align-items-center">
                        <div class="quantity__box">
                            <button type="button" class="quantity__value decrease" onclick="decrease()">-</button>
                            <label>
                                <input type="number" class="quantity__number" value="${value.numberOf}" id="valueTotal" />
                                <input type="hidden" id="srcImage" value="">
                                <input type="hidden" id="priceCurrent" value="">
                                <input type="hidden" id="cateID" value="">
                            </label>
                            <button type="button" class="quantity__value increase" onclick="increase()">+</button>
                        </div>
                        <button class="minicart__product--remove" data-id="${value.idProduct}">Remove</button>
                    </div>
                </div>
            </div>`;
    }).join('');

    cart.innerHTML = html;
    itemCountProduct.innerText = obj.length;
    itemCountProduct2.innerText = obj.length;
    btnRemoves = document.querySelectorAll('.minicart__product--remove');
}

renderProducts(cartsProducts)




for (const btnRemoveElement of btnRemoves) {
    btnRemoveElement.addEventListener('click',() => {
        const idItem = btnRemoveElement.getAttribute('data-id');
        const elm = document.querySelector('#products__'+idItem);
        console.log(elm);
        elm.remove();
        const index = cartsProducts.findIndex(item => item.idProduct === idItem);
        console.log(index);
        if (index !== -1) {
            cartsProducts.splice(index, 1);
        }
        localStorage.setItem("carts", JSON.stringify(cartsProducts));
        itemCountProduct.innerText = cartsProducts.length;
        itemCountProduct2.innerText = cartsProducts.length;
    })
}
