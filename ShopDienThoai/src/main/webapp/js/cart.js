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
                        toastr["success"]("Xóa sản phẩm thành công!")
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

function updateCart(productId) {
    $.ajax({
        url: 'cart',
        type: 'POST',
        data: { productId: productId, isUpdate: true, quantity: $(`#number-${productId}`).val() },
        success: function(data) {
            // var cartNumber = Object.keys(data).length;           
            toastr["success"]("Cập nhật giỏ hàng thành công!")
            setTimeout(function() {
                location.reload();
            }, 1000)
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