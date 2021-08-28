app.controller("order-ctrl", function($scope, $http) {
	$scope.items = [];
	$scope.itemdetail = []; 
	
	$scope.load = function() {
		//load products
		$http.get("/rest/orders").then(resp => {
			$scope.items = resp.data;
		})
	}
	$scope.load();
	
	$scope.orderdetail = function(id) {
		//load orderDetail
		$http.get(`/rest/orderdetail/${id}`).then(resp => {
			$scope.itemdetail = resp.data;
		})
	}
	
	$scope.yesterday = function() {
		var date = 1;
		$http.get(`/rest/orders/${date}`).then(resp => {
			$scope.items = resp.data;
		}).catch(error => {
			alert("Sai định dang")
		})
	}
	$scope.lastday7 = function() {
		var date = 7;
		$http.get(`/rest/orders/${date}`).then(resp => {
			$scope.items = resp.data;
		}).catch(error => {
			alert("Sai định dang")
		})
	}
	$scope.lastday30 = function() {
		var date = 30;
		$http.get(`/rest/orders/${date}`).then(resp => {
			$scope.items = resp.data;
		}).catch(error => {
			alert("Sai định dang")
		})
	}
	
	$scope.pager = {
		page: 0,
		size: 10,
		get items() {
			var start = this.page * this.size;
			return $scope.items.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.items.length / this.size);
		},
		first() {
			this.page = 0;
		},
		prev() {
			this.page--;
			if (this.page < 0) {
				this.last();
			}
		},
		next() {
			this.page++;
			if (this.page >= this.count) {
				this.first();
			}
		},
		last() {
			this.page = this.count - 1;
		}
	}

})