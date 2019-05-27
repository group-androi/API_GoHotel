# API_GoHotel

# table BookRoom
+	get - /book/get.php - lấy thông tin với id tương ứng nếu không truyền id thì sẽ lấy toàn bộ thông tin
		Parameter: 
			id - mã tỉnh thành - nếu cần
		
+	post - /book/create.php - thêm đặt phòng
		Parameter:
			hotel_id - 
			room_id - 
			date_start - 
			date_end - 
			price - 
			time_book - 
			phone - 
			info_user - 
+	post - /book/update.php - cập nhật lại thông tin đặt phòng
		Parameter:
			id - mã đặt phòng muốn sửa - bắt buộc
			hotel_id_new -  - nếu cần thay đổi
			room_id_new -  - nếu cần thay đổi
			date_start_new -  - nếu cần thay đổi
			date_end_new -  - nếu cần thay đổi
			price_new -  - nếu cần thay đổi
			time_book_new -  - nếu cần thay đổi
			phone_new -  - nếu cần thay đổi
			info_user_new -  - nếu cần thay đổi
+	get - /book/delete.php - xóa đặt phòng với id tương ứng
		Parameter: id - mã đặt phòng muốn xóa

# table City
+	get - /city/get.php - lấy thông tin (tên) của tỉnh thành với id tương ứng nếu không truyền id thì sẽ lấy toàn bộ thông tin
		Parameter: 
			id - mã tỉnh thành - nếu cần
		
+	post - /city/create.php - thêm một tỉnh thành. - token
		Parameter:
			name - tên tỉnh thành
+	post - /city/update.php - cập nhật lại tên thành phố. - token
		Parameter:
			id - mã tỉnh thành muốn sửa
			city_name - tên tỉnh thành mới
+	get - /city/delete.php - xóa tỉnh thành với id tương ứng - token
		Parameter: id - mã tỉnh thành

# table Device
+	post - /city/create.php - 
		Parameter:
			device_id - 
			longitude -
			latitude - 
+	get - /city/delete.php -  - token
		Parameter: device_id - 
+	get - /city/get.php -  - token
		Parameter: 
			device_id -  - nếu chỉ lấy 1 thông tin
+	post - /city/update.php -  - token
		Parameter:
			device_id - 
			latitude - kinh độ mới - nếu cần truyền
			longitude - vĩ độ mới - nếu cần truyền

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
	post - /hotel/create.php - thêm một khách sạn - token
		Parameter:
			name - tên khách sạn
			address - địa chỉ khách sạn
			district_id - mã quận/huyện
			city_id - mã tỉnh thành
			price_1_day - chi phí trong 1 ngày (24 giờ) - null
			latitude - vĩ độ của khách sạn trên bề mặt trái đất - null
			longitude - kinh độ của khách sạn trên bề mặt trái đất - null
			check_in - thời gian nhận phòng - null
			check_out - thời gian trả phòng - null
	post - /hotel/update.php - cập nhật 1 khách sạn với id tương ứng - token
		Parameter:
			id - mã khách sạn sẽ thay đổi
			name - tên khách sạn
			address - địa chỉ khách sạn
			district_id - mã quận/huyện
			city_id - mã tỉnh thành
			price_1_day - chi phí trong 1 ngày (24 giờ)
			latitude - vĩ độ của khách sạn trên bề mặt trái đất
			longitude - kinh độ của khách sạn trên bề mặt trái đất
			check_in - thời gian nhận phòng - null
			check_out - thời gian trả phòng - null
	get - /hotel/delete.php - xóa 1 khách sạn nào đó - token
		Parameter: id - mã khách sạn muốn xóa - không truyền sẽ xóa tất cả
	get/post - /hotel/search.php - tìm khách sạn theo tên (đồng thời sẽ lưu từ khóa vào cơ sở dữ liệu)
		Parameter: key - từ khóa
			limitfrom - allow null
			limitcount - allow null
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
	post - /hotel/getHotelHome.php - 
		Parameter:
			latitude - 
			longitude - 
			limit_from -  - nếu cần truyền
			limit_count -  - nếu cần truyền
			city_id - mã tỉnh - nếu cần truyền
			district_id - mã quận huyện - nếu cần truyền
			price_start - giới hạn giá phòng tối tiếu - nếu cần truyền
			price_end - giới hạn giá phòng tối đa - nếu cần truyền
			sort_price - sắp xếp theo giá tiền (chỉ nhận giá trị DESC hoặc ASC) - nếu cần truyền
			sort_distance - sắp xếp theo khoảng cách (chỉ nhận giá trị DESC hoặc ASC) - nếu cần truyền
			sort_star - sắp xếp số lượng đánh giá sao (chỉ nhận giá trị DESC hoặc ASC) - nếu cần truyền
	post - /hotel/getHotelMap.php - 
		Parameter:
			latitude - tung độ của trái đất
			longitude - hoành độ của trái đất
			radius - giới hạn khoảng cách
			city_id - mã tỉnh - nếu cần truyền
			district_id - mã quận huyện - nếu cần truyền
			
# table Image
	post - /image/create.php - thêm ảnh khách sạn - token
		Parameter:
			hotel_id - mã khách sạn
			room_id - mã phòng muốn nhận - không cần truyền
			image[] - danh sách file muốn up lên
	post - /image/delete.php - xóa dữ liệu dựa vào 1 trong các giá trị. Khi không truyền giá trị nào thì sẽ xóa hết dữ liệu. - token
		Parameter:
			hotel - mã khách sạn - không cần truyền
			room - mã phòng - không cần truyền
			address_image - đường dẫn file muốn xóa - không cần truyền
	post - /image/get.php
		Parameter:
			hotel - mã khách sạn - không cần truyền
			room - mã phòng - không cần truyền
			address_image - đường dẫn file - không cần truyền
	post - /image/update.php
		Parameter:
			hotel - mã khách sạn - không cần truyền
			room - mã phòng - không cần truyền
			file[] - đường dẫn file muốn thêm vào - không cần truyền
			
# table Keyword
	get/post - /keyword/get.php - 
		Parameter:
			key - từ khóa - không truyền nếu muốn lấy tất cả
	get/post - /keyword/create.php - 
		Parameter:
			key - từ khóa cần tạo - 
	get/post - /keyword/delete.php -  - token
		Parameter:
			key -  - không truyền sẽ xóa tất cả
	get/post - /ketword/update.php -  - token
		Parameter:
			key_new - từ khóa mới
			key_old - từ khóa cũ
			
# table Review
	get/post - /review/get.php - 
		Parameter:
			hotel_id - mã khách sạn - không cần truyền
			room_id - mã phòng - không cần truyền
			user - người đánh giá - không cần truyền
			comment - bình luận người dùng - không cần truyền
			star - sao đánh giá - không cần truyền
	get/post - /review/create.php -  - token
		Parameter:
			hotel_id - mã khách sạn
			room_id - mã phòng
			user - người đánh giá
			comment - bình luận người dùng
			star - sao đánh giá
	get/post - /review/delete.php -  - token
		Parameter:
			hotel_id - mã khách sạn - không cần truyền
			room_id - mã phòng - không cần truyền
			user - người đánh giá - không cần truyền
			comment - bình luận người dùng - không cần truyền
			star - sao đánh giá - không cần truyền
		(LƯU Ý SẼ XÓA TẤT CẢ NẾU K TRUYỀN GÌ CẢ)
	get/post - /review/update.php -  - token
		Parameter:
			hotel_id - mã khách sạn
			room_id - mã phòng
			user - người đánh giá
			comment_new - bình luận mới của người dùng - không truyền sẽ xóa nội dung
			star_new - sao đánh giá mới - không truyền sẽ xóa nội dung

# table Room
	post - /room/create.php - 
		Parameter:
			name - 
			hotel_id - 
			price_1_day -  - allow null
			image - file ảnh đại diện - k cần truyền
			status - - k cần truyền
			number_room -  - k cần truyền
	get - /room/get.php - 
		Parameter:
			id - mã phòng - không truyền nếu muốn lấy tất cả
			hotel - mã khách sạn
	get - /room/delete.php -  - token
		Parameter:
			id - không truyền sẽ xóa tất cả
			hotel - mã khách sạn không truyền sẽ xóa tất cả
	get/post - /room/update.php -  - token
		Parameter:
			id - mã phòng - không truyền nếu muốn lấy tất cả
			hotel - mã khách sạn
			name - tên phòng mới - nếu cần
			price - giá mới - nếu cần
			image - file ảnh đại diện mới - nếu cần truyền
			status - - nếu cần truyền
			number_rooms - số lượng phòng mới - nếu cần truyền

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