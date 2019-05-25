# API_GoHotel

# table City
+	get - /city/get.php - lấy thông tin (tên) của tỉnh thành với id tương ứng nếu không truyền id thì sẽ lấy toàn bộ thông tin
		Parameter: 
			id - mã tỉnh thành - nếu có
		Return:
			json - all record city
		
+	post - /city/create.php - thêm một tỉnh thành. 
		Parameter:
			name - tên tỉnh thành
+	post - /city/update.php - cập nhật lại tên thành phố. 
		Parameter:
			id - mã tỉnh thành muốn sửa
			city_name - tên tỉnh thành mới
+	get - /city/delete.php - xóa tỉnh thành với id tương ứng
		Parameter: id - mã tỉnh thành

# table District
	post/get - /district/accordingToCityId.php - lấy danh sách quận huyện theo mã tỉnh thành.
		Parameter:
			city_id - mã tỉnh thành
	post/get - /districts/accordingToCityName.php - lấy danh sách quận huyện theo tên tỉnh thành.
		Parameter:
			city_name - tên tỉnh thành
	get - /district/get.php - lấy thông tin (tên và mã tỉnh thành) của 1 quận huyện.
		Parameter: id - mã quận huyện - nếu không có thì sẽ lấy tất cả
	post - /district/create.php - thêm một quận huyện
		Parameter:
			name - tên quận huyện
			city_id - mã tỉnh thành
	post - /district/update.php - cập nhật 1 quận huyện với id tương ứng
		Parameter:
			id - mã quận huyện sẽ thay đổi
			name - tên quận huyện mới
			city_id - mã tỉnh thành mới tương ứng
	get - /district/delete.php - xóa 1 quận huyện nào đó
		Args: id - mã quận huyện muốn xóa

# table Hotel
	post - /hotel/accordingToRadius.php - lấy danh sách khách sạn theo bán kính bề mặt trái đất
		Parameter:
			latitude_from - kinh độ bắt đầu
			latitude_to - kinh độ kết thúc
			longitude_from - vĩ độ bắt đầu
			longitude_to - vĩ độ kết thúc
	get - /hotel/get.php - lấy thông tin của 1 khách sạn
		Args: id - mã khách sạn - bỏ nếu muốn lấy all record
	post - /hotel/create.php - thêm một khách sạn
		Parameter:
			name - tên khách sạn
			address - địa chỉ khách sạn
			district_id - mã quận/huyện
			city_id - mã tỉnh thành
			price_1_day - chi phí trong 1 ngày (24 giờ)
			latitude - vĩ độ của khách sạn trên bề mặt trái đất
			longitude - kinh độ của khách sạn trên bề mặt trái đất
	post - /hotel/update.php - cập nhật 1 khách sạn với id tương ứng
		Parameter:
			id - mã khách sạn sẽ thay đổi
			name - tên khách sạn
			address - địa chỉ khách sạn
			district_id - mã quận/huyện
			city_id - mã tỉnh thành
			price_1_day - chi phí trong 1 ngày (24 giờ)
			latitude - vĩ độ của khách sạn trên bề mặt trái đất
			longitude - kinh độ của khách sạn trên bề mặt trái đất
	get - /hotel/delete.php - xóa 1 khách sạn nào đó
		Parameter: id - mã khách sạn muốn xóa
	get - /hotel/search.php - tìm khách sạn theo tên
		Parameter: key - từ khóa
	post - /hotel/getHotelHome.php - lấy danh sách 
		Parameter:
			latitude - 
			longitude -
			limitfrom - allow null
			limitcount - allow null
	post - /hotel/getHotelMap
		Parameter:
			latitude -
			longitude - 
			radius - 

# table User
	get - /hotel/<<id>> - lấy thông tin của  người dùng
		Args: id - tên đăng nhập người dùng - bỏ nếu muốn lấy tất cả thông tin người dùng
	post - /user/create.php - thêm một người dùng (đăng ký)
		Parameter:
			username - tên người dùng
			birthday - ngày sinh - allow null
			gender - giới tính (0 hoặc 1) - null 
			latitude - kinh độ của người dùng - null
			longitude - vĩ độ của người dùng - null
	post - /hotel/update.php - cập nhật thông tin người dùng
		Parameter: (thông tin sẽ thay đổi)
			username - tên đăng nhập 
			birthday - ngày sinh - allow null
			phone - số điện thoại
			gender - giới tính (0 hoặc 1) - null 
			latitude - kinh độ của người dùng - null
			longitude - vĩ độ của người dùng - null
			tokenn - token muốn cập nhật - null
	get - /user/delete.php - xóa người dùng
		Parammeter: user - tên đăng nhập muốn xóa - khi không có giá trị này thì sẽ xóa toàn bộ thông tin hiện có trong
	post - /login - đăng nhập
		Parameter:
			username - tên đăng nhập
			password - mật khẩu