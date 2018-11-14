var app = angular.module('app', ['ui.router', 'ngMaterial']);

app.config([
    '$stateProvider', '$urlRouterProvider', 
    function($stateProvider, $urlRouterProvider) {
		$urlRouterProvider.otherwise('tableView');
		$stateProvider
        .state('tableView', {
            url: '/tableView', 
            templateUrl: './pages/tableView.html',
			controller: 'viewController',
			cache: false,
			resolve: {
				contacts: function(dataService) {
					dataService.updateAndGet().then(function(response) {
						dataService.setContacts(response.data);
						return dataService.getContacts();
					});
				}
			}
        })
        .state('businessCardView', {
            url: '/businessCardView',
            templateUrl: './pages/businessCardView.html',
			controller: 'viewController'
        })
        .state('contactForm', {
            url: '/contactForm/:mode/:contact',
            templateUrl: './pages/contactForm.html',
			controller: 'formController',
			params: {
				contact: { squash: true }
			}
        })
	}
]);

app.config(function($mdThemingProvider) {
	$mdThemingProvider.theme('default')
    .primaryPalette('grey', {
      	'default':'900'
	})
	.accentPalette('pink', {
		'default':'50'
	});
});

app.controller('navController', ['$scope', '$state', function($scope, $state) {
	$scope.isActive = function(stateName) {
		return $state.current.name == stateName;
	};
	$scope.getMode = function() {
		return $state.params.mode;
	}
}]);

app.controller('viewController', ['$scope', '$state', 'dataService', function($scope, $state, dataService) {
	$scope.getContacts = function() {
		return dataService.getContacts();
	}
	$scope.viewContact = function(contact) {
		$state.go('contactForm', {mode: 'edit', contact: JSON.stringify(contact)});
	};
}]);

app.controller('formController', ['$scope', '$http', '$stateParams', '$state', '$timeout', function($scope, $http, $stateParams, $state, $timeout) {
	$scope.mode = $stateParams.mode;
	if($scope.mode == 'edit') {
		$scope.contact = JSON.parse($stateParams.contact);
	}
	$scope.editContact = function(contact, form) {
		$http.post("php-scripts/updateData.php", contact)
		.success(function(data) {
			alert(data);
		});
		$scope.redirectHome(form);
	};
	$scope.deleteContact = function(contact, form) {
		$http.post("php-scripts/deleteData.php", contact)
		.success(function(data) {
			alert(data);
		});
		$scope.redirectHome(form);
	};
	$scope.addContact = function(contact, form) {
		$http.post("php-scripts/insertData.php", contact)
		.success(function(data) {
			alert(data);
		});
		$scope.redirectHome(form);
	};
	$scope.redirectHome = function(form) {
		$timeout(function() {
			$scope.clear(form);
			$state.go('tableView', {}, {reload: true});
		}, 100);
	}
	$scope.clear = function(form) {
		if(form) {
			form.$setPristine();
		}
	  	$scope.contact = {};
	};
}]);

app.service('dataService', ['$http', function($http) {

	this.contacts = {};

	function updateAndGet() {
		return $http.get("php-scripts/getData.php");
	};

	function getContacts() {
		return this.contacts;
	};

	function setContacts(updatedContacts) {
		this.contacts = updatedContacts;
	}

	return {
		updateAndGet: updateAndGet,
		getContacts: getContacts,
		setContacts: setContacts
	};
}]);