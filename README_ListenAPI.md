# API_GoHotel

# table City
	get - /city/checkCity/<<name>> - check url to route of city
	get - /citys - lấy tất cả danh sách tỉnh/thành phố có trong db
	get - /city/<<id>> - lấy thông tin (tên) của tỉnh thành với id tương ứng. 
		Args: id - mã tỉnh thành
	post - /city - thêm một tỉnh thành. 
		Parameter:
			city_name - tên tỉnh thành
	put - /city/<<id>> - cập nhật lại tên thành phố. 
		Args: id - mã tỉnh thành
		Parameter:
			city_name - tên tỉnh thành
	delete - /city/<<id>> - xóa tỉnh thành với id tương ứng
		Args: id - mã tỉnh thành

# table District
	get - /districts - lấy danh sách tất cả quận/huyện/thành trực thuộc tỉnh thành.
	get - /district/<<id>> - lấy thông tin (tên và mã tỉnh thành) của 1 quận huyện.
		Args: id - mã quận huyện
	post - /district - thêm một quận huyện
		Parameter:
			name - tên quận huyện
			city_id - mã tỉnh thành
	put - /district/<<id>> - cập nhật 1 quận huyện với id tương ứng
		Args: id - mã quận huyện sẽ thay đổi
		Parameter:
			name - tên quận huyện mới
			city_id - mã tỉnh thành mới tương ứng
	delete - /district/<<id>> - xóa 1 quận huyện nào đó
		Args: id - mã quận huyện muốn xóa

# table Hotel
	get - /hotels - lấy danh sách tất cả khách sạn
	post - /hotelsAccordingToRadius - lấy danh sách khách sạn theo bán kính bề mặt trái đất
		Parameter:
			lat_from - kinh độ bắt đầu
			lat_to - kinh độ kết thúc
			long_from - vĩ độ bắt đầu
			long_to - vĩ độ kết thúc
	get - /hotel/<<id>> - lấy thông tin của 1 khách sạn
		Args: id - mã khách sạn
	post - /district - thêm một khách sạn
		Parameter:
			name - tên khách sạn
			address - địa chỉ khách sạn
			district_id - mã quận/huyện
			city_id - mã tỉnh thành
			price_1_day - chi phí trong 1 ngày (24 giờ)
			latitude - vĩ độ của khách sạn trên bề mặt trái đất
			longitude - kinh độ của khách sạn trên bề mặt trái đất
	put - /hotel/<<id>> - cập nhật 1 khách sạn với id tương ứng
		Args: id - mã khách sạn sẽ thay đổi
		Parameter:
			name - tên khách sạn
			address - địa chỉ khách sạn
			district_id - mã quận/huyện
			city_id - mã tỉnh thành
			price_1_day - chi phí trong 1 ngày (24 giờ)
			latitude - vĩ độ của khách sạn trên bề mặt trái đất
			longitude - kinh độ của khách sạn trên bề mặt trái đất
	delete - /hotel/<<id>> - xóa 1 khách sạn nào đó
		Args: id - mã khách sạn muốn xóa