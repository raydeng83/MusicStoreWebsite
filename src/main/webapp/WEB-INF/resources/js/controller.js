var cartApp = angular.module("cartApp", []);

cartApp.controller('cartCtrl', function ($scope, $http) {

    $scope.clearCart = function () {
        $http.delete('/MusicStoreWebsite/rest/cart/' + $scope.cartId)
            .success(function () {
                $scope.initCartId($scope.cartId);
            });
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $http.get('/MusicStoreWebsite/rest/cart/' + $scope.cartId).success(function (data) {
            $scope.cart = data;
        });
    };

    $scope.addToCart = function (productId) {
        $http.put('/MusicStoreWebsite/rest/cart/add/' + productId)
            .success(function () {
                $scope.initCartId($scope.cartId);
                alert("Product Successfully added to the Cart!");
            });
    };
    $scope.removeFromCart = function (productId) {
        $http.put('/MusicStoreWebsite/rest/cart/remove/' + productId)
            .success(function () {
                $scope.initCartId($scope.cartId);
            });
    };

});