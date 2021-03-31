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

function themVaoGioHang(productId) {
    $.ajax({
        url: 'check-login',
        type: 'POST',
        success: function(data) {
            if (data === 0) {
                window.location.href = '/login';
            } else {
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
        },
        error: function(err) {

        }
    })

}