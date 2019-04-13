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
			district_name - tên quận huyện
			city_id - mã tỉnh thành
	put - /district/<<id>> - cập nhật 1 quận huyện với id tương ứng
		Args: id - mã quận huyện sẽ thay đổi
		Parameter:
			name_district - tên quận huyện mới
			city_id - mã tỉnh thành mới tương ứng
	delete - /district/<<id>> - xóa 1 quận huyện nào đó
		Args: id - mã quận huyện muốn xóa

