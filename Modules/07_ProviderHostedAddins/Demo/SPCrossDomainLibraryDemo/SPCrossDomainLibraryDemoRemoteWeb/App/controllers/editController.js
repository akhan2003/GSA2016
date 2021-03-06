﻿'use strict';

(function () {

  var app = angular.module('AngularCRM');

  app.controller('editController', editController);

  function editController($scope, $routeParams, $location, wingtipCrmService) {
    var id = $routeParams.id;
    wingtipCrmService.getCustomer(id).then(function (data) {
      $scope.customer = data.d;
      $scope.updateCustomer = function () {
        var firstName = $scope.customer.FirstName;
        var lastName = $scope.customer.Title;
        var workPhone = $scope.customer.WorkPhone;
        var homePhone = $scope.customer.HomePhone;
        var email = $scope.customer.Email;
        var etag = $scope.customer.__metadata.etag;
        wingtipCrmService.updateCustomer(id, firstName, lastName, workPhone, homePhone, email, etag)
        .then(function (data) {
          $location.path("/");
        });
      }
    });
  }
})();