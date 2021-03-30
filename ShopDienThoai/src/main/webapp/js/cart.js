function themVaoGioHang(productId) {
    $.ajax({
        url: 'cart',
        type: 'POST',
        data: { productId: productId },
        success: function(data) {
            if (typeof data === 'string') {
                window.location.href = '/login';
            }
            var cartNumber = Object.keys(data).length;
            $('#cart-number').html(cartNumber);
            console.log(data)
        },
        error: function(err) {

        }
    })
}