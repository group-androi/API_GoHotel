<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

$app->get('/hotels', function (Request $request, Response $response, array $args) {
    $db = $this->db->prepare("SELECT * FROM hotel  ORDER BY `name_hotel`");
    $db->execute();
    $books = $db->fetchAll();
    return $this->response->withJson($books);
});

$app->post('/hotelsAccordingToRadius', function (Request $request, Response $response, array $args) {
    $input = $request->getParsedBody();
    $db = $this->db->prepare("SELECT * FROM `hotel` WHERE (`latitude` BETWEEN :latFrom AND :latTo) AND (`longitude` BETWEEN :longFrom AND :longTo)");
    $db->bindParam("latFrom", $input['lat_from']);
    $db->bindParam("letTo", $input['lat_to']);
    $db->bindParam("longFrom", $input['long_from']);
    $db->bindParam("longTo", $input['long_to']);
    $db->execute();
    $list = $db->fetchAll();
    return $this->response->withJson($list);
});

 $app->get('/hotel/[{id}]', function (Request $request, Response $response, array $args) {
    $db = $this->db->prepare("SELECT * FROM hotel WHERE id_hotel = :id");
    $db->bindParam("id", $args['id']);
    $db->execute();
    $book = $db->fetchObject();
    return $this->response->withJson($book);
 });

 $app->post('/hotel', function (Request $request, Response $response) {
    $input = $request->getParsedBody();
    $sql = "INSERT INTO `hotel`(`name_hotel`, `address`, `district_id`, `city_id`, `price_room_per_day`, `latitude`, `longitude`) VALUES (:nameHotel, :address, :districtId, :cityId, :price1Day, :latitude, :longitude)";
    $db = $this->db->prepare($sql);
    $db->bindParam("nameHotel", $input['name']);
    $db->bindParam("address", $input['address']);
    $db->bindParam("districtId", $input['district_id']);
    $db->bindParam("cityId", $input['city_id']);
    $db->bindParam("price1Day", $input['price_1_day']);
    $db->bindParam("latitude", $input['latitude']);
    $db->bindParam("longitude", $input['longitude']);
    $db->execute();
    $input['id'] = $this->db->lastInsertId();
    return $this->response->withJson($input);
 });

 $app->put('/hotel/[{id}]', function (Request $request, Response $response, array $args) {
    $input = $request->getParsedBody();
    $sql = "UPDATE `hotel` SET `name_hotel`=:name,`address`=:address,`district_id`=:districtId,`city_id`=:cityId,`price_room_per_day`=:price1Day,`latitude`=:latitude,`longitude`=:longitude WHERE `id_hotel`=id";
    $db = $this->db->prepare($sql);
    $db->bindParam("nameHotel", $input['name']);
    $db->bindParam("address", $input['address']);
    $db->bindParam("districtId", $input['district_id']);
    $db->bindParam("cityId", $input['city_id']);
    $db->bindParam("price1Day", $input['price_1_day']);
    $db->bindParam("latitude", $input['latitude']);
    $db->bindParam("longitude", $input['longitude']);
    $db->bindParam("id", $args['id']);
    $db->execute();
    $input['id'] = $args['id'];
    return $this->response->withJson($input);
 });

 $app->delete('/hotel/[{id}]', function (Request $request, Response $response, array $args) {
    $sth = $this->db->prepare("DELETE FROM `hotel` WHERE `id_hotel`=:id");
    $sth->bindParam("id", $args['id']);
    $sth->execute();
    return $this->response->withJson();
 });
 