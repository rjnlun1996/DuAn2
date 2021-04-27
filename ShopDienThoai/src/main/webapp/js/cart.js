toastr.options = {
    "closeButton": false,
    "debug": false,
    "newestOnTop": false,
    "progressBar": false,
    "positionClass": "toast-top-right",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
}

function themVaoGioHang(func) {
    $.ajax({
        url: 'check-login',
        type: 'POST',
        success: function(data) {
            if (data === 0) {
                window.location.href = '/login';
            } else {
                func;
            }
        },
        error: function(err) {

        }
    })

}

function deleteProductCart(productId) {
    swal({
            title: "Thông báo!",
            text: "Bạn có chắc chắn muôn xóa sản phẩm này không",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
        .then((willDelete) => {
            if (willDelete == true) {
                $.ajax({
                    url: 'check-login',
                    type: 'POST',
                    success: function(data) {
                        if (data === 0) {
                            window.location.href = '/login';
                        } else {
                            $.ajax({
                                url: '/cart/delete',
                                type: 'POST',
                                data: { productId: productId },
                                success: function(data) {
                                    location.reload();
                                },
                                error: function(err) {

                                }
                            });
                        }
                    },
                    error: function(err) {

                    }
                })
            }
        });

}

function deleteProduct(productId) {
    $.ajax({
        url: 'check-login',
        type: 'POST',
        success: function(data) {
            if (data === 0) {
                window.location.href = '/login';
            } else {
                $.ajax({
                    url: '/cart/delete',
                    type: 'POST',
                    data: { productId: productId },
                    success: function(data) {
                        // var cartNumber = Object.keys(data).length;                         
                        $('#render-cart').html(data);
                        $('#cart-number').html($('.dropcart__product').length);
                        toastr["success"]("Xóa sản phẩm thành công!");
                        if (location.pathname === '/check_out') setTimeout(() => {
                            location.reload();
                        }, 1000);
                    },
                    error: function(err) {

                    }
                });
            }
        },
        error: function(err) {

        }
    })

}

function updateCart(productId, add) {
    var quantity = parseInt($(`#number-${productId}`).val()) + parseInt(add);
    $(`#number-${productId}`).val(quantity);
    $.ajax({
        url: 'cart',
        type: 'POST',
        data: { productId: productId, isUpdate: true, quantity: quantity},
        success: function(data) {
            // var cartNumber = Object.keys(data).length;  
            $("#template-cart").load("/cart #template-cart");         
            toastr["success"]("Cập nhật giỏ hàng thành công 123!")
            // setTimeout(function() {
            //     location.reload();
            // }, 1000)
        },
        error: function(err) {

        }
    });
}

function addCartDetail(productId) {
    $.ajax({
        url: 'cart',
        type: 'POST',
        data: { productId: productId, isDetail: true, quantity: $('#product-quantity').val() },
        success: function(data) {
            // var cartNumber = Object.keys(data).length;                         
            $('#render-cart').html(data);
            $('#cart-number').html($('.dropcart__product').length);
            toastr["success"]("Thêm vào giỏ hàng thành công!")
        },
        error: function(err) {

        }
    });
}

function addCartIndex(productId) {
    $.ajax({
        url: 'cart',
        type: 'POST',
        data: { productId: productId },
        success: function(data) {
            // var cartNumber = Object.keys(data).length;                         
            $('#render-cart').html(data);
            $('#cart-number').html($('.dropcart__product').length);
            toastr["success"]("Thêm vào giỏ hàng thành công!")
        },
        error: function(err) {

        }
    });
}

function getCartDropdown() {
    $.ajax({
        url: 'cart_dropdown',
        type: 'GET',
        success: function(data) {                       
            $('#render-cart').html(data);
            $('#cart-number').html($('.dropcart__product').length);
        },
        error: function(err) {

        }
    });
}



function updateCart1(productId, price, add, discount) {
    const cartNumber = document.getElementById('c-number');
    const totalcartPrice = document.getElementById('total-cart-price');
    const totalcartDiscount = document.getElementById('total-cart-discount');
    const totalCartCheckout = document.getElementById('total-cart-checkout');

    
    let fCartNumber = cutPrice(cartNumber);
    let fTotalCartPrice = cutPrice(totalcartPrice);
    let fTotalCartDiscount = cutPrice(totalcartDiscount);
    
    const q = document.getElementById(`number-${productId}`)
    const priceTotal = document.getElementById(`number-${productId}-total`);
    const quantity = parseInt(q.value) + parseInt(add);
    

    if((add == -1 && quantity >= 1) || add == 1){      
        
        
        const priceTotalProduct = price * quantity;
        const lTotalCartPrice = fTotalCartPrice + price * parseInt(add);
        if(discount){
            fTotalCartDiscount = cutPrice(totalcartDiscount) +  price * parseInt(add) * discount / 100;            
            totalcartDiscount.innerHTML = renderPrice(fTotalCartDiscount);
        }        
        let lTotalCartCheckout = lTotalCartPrice - fTotalCartDiscount;

        q.value = quantity;
        priceTotal.innerHTML = renderPrice(priceTotalProduct);
        cartNumber.innerHTML = (parseInt(add) + fCartNumber).toString();
        totalcartPrice.innerHTML = renderPrice(lTotalCartPrice);
        totalCartCheckout.innerHTML = renderPrice(lTotalCartCheckout);

        $.ajax({
            url: 'cart',
            type: 'POST',
            data: { productId: productId, isUpdate: true, quantity: quantity},
            success: function(data) {    
                getCartDropdown();  
                toastr["success"]("Cập nhật giỏ hàng thành công!");                
            },
            error: function(err) {

            }
        });
    }


    
}

function cutPrice(elm){
    return parseFloat(elm.innerHTML.replace('VNĐ','').trim().replaceAll('.',''));
}

function renderPrice(price){
    let p = price.toString();
    let result = '';

    let count = 0;
    for(let i = p.length; i >= 0; i--) {
        result = p.charAt(i) + result;        
        if(count == 3 && i != 0){
            result = '.' + result;
            count = 0;
        }
        count++;
    }

    return result + ' VNĐ';
}