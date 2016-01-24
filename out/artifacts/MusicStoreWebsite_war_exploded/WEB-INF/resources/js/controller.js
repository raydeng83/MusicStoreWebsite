/**
 * Created by Le on 10/21/2015.
 */
var cartApp = angular.module("cartApp", []);

cartApp.controller('cartCtrl', function ($scope, $http) {
    $scope.refreshCart = function () {
        $http.get('/MusicStoreWebsite/rest/cart/' + $scope.cartId).success(function (data) {
            $scope.cart = data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/MusicStoreWebsite/rest/cart/' + $scope.cartId)
            .success(function () {
                $scope.refreshCart();
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
                $scope.refreshCart($scope.cartId);
                $scope.initCartId($scope.cartId);
                alert("Product Successfully added to the Cart!");

            });
    };
    $scope.removeFromCart = function (productId) {
        $http.put('/MusicStoreWebsite/rest/cart/remove/' + productId)
            .success(function () {
                $scope.refreshCart($scope.cartId);
            });
    };


});