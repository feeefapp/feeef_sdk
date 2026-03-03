import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.freezed.dart';
part 'create_order_request.g.dart';

// "order_id"=>"MyFirstOrder",
// "from_wilaya_name"=>"Batna",
// "firstname"=>"Brahim",
// "familyname"=>"Mohamed",
// "contact_phone"=>"0123456789,",
// "address"=>"Cité Kaidi",
// "to_commune_name"=>"Bordj El Kiffan",
// "to_wilaya_name"=>"Alger",
// "product_list"=>"Presse à café",
// "price"=>3000,
// "do_insurance" => true,
// "declared_value" => 3500,
// "height"=> 10,
// "width" => 20,
// "length" => 30,
// "weight" => 6,
// "freeshipping"=> true,
// "is_stopdesk"=> true,
// "stopdesk_id" => 163001,
// "has_exchange"=> 0,
// "product_to_collect" => null
// Parameter 	Required 	Type 	Description
// order_id 	required 	string 	A string representing the order id of the parcel, you cannot use duplicated order id in the same request, so this must be unique for each parcel in the same request.
// When the parcel is created, this order_id let you know which tracking is affected to which order.
// from_wilaya_name 	required 	string 	A string representing the sender’s wilaya name.
// You can get the list of the acceptable wilaya names in the WILAYAS endpoint. Please see the wilayas docs.
// firstname 	required 	string 	The receiver’s first name.
// familyname 	required 	string 	The receiver’s family name
// contact_phone 	required 	string 	The receiver’s phone numbers (can be separated by commas if many)
// address 	required 	string 	The receiver’s address
// to_commune_name 	required 	string 	A string representing the receiver’s commune name.
// You can get the list of the acceptable commune names in the COMMUNES endpoint. Please see the communes docs.
// to_wilaya_name 	required 	string 	A string representing the receiver’s wilaya name.
// You can get the list of the acceptable wilaya names in the WILAYAS endpoint. Please see the wilayas docs.
// product_list 	required 	string 	The description of the shipment’s content.
// Price 	required 	integer 	An integer amount representing the price you want to recover from the receiver. (equal or between 0 and 150000)
// do_insurance 	Required 	boolean 	Whether or not you opt for an insurance (if true : 0% fee of declared_value is applicable, the refund is 100%).
// declared_value 	Required 	integer 	Represents the financial estimation of the items within the parcel. (must be between 0 and 150000)
// Length 	Required 	integer 	An integer amount representing the length of the parcel’s content in centimeters (cm). (greater than or equal to 0)
// Width 	Required 	integer 	An integer amount representing the width of the parcel’s content in centimeters (cm). (greater than or equal to 0)
// Height 	Required 	integer 	An integer amount representing the height of the parcel’s content in centimeters (cm). (greater than or equal to 0)
// Weight 	Required 	integer 	An integer amount representing the weight of the parcel’s content. (greater than or equal to 0)
// freeshipping 	required 	boolean 	A Boolean representing whether the delivery fee is free (paid by the sender) or not.
// True = paid by the sender.
// false = paid by the receiver.
// is_stopdesk 	required 	boolean 	Whether the delivery will be done in a stop-desk or home delivery.
// True = delivery in stop desk, you must include the param stopdesk_id, see below.
// False = home delivery
// stopdesk_id 	conditional 	string 	This parameter is required if is_stopdesk is true, optional if not. This value is the center's id of the stop-desk where you want to send the parcel to.
// has_exchange 	required 	boolean 	A Boolean representing Whether or not you want to make an exchange request for this parcel.
// product_to_collect 	conditional 	string 	This parameter is required if has_exchange is true, optional if not. When has_exchange is true, this value is the designation of what to return in the annexed exchange parcel.

@freezed
abstract class YalidineOrderCreateRequest with _$YalidineOrderCreateRequest {
  factory YalidineOrderCreateRequest({
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'from_wilaya_name') required String fromWilayaName,
    @JsonKey(name: 'firstname') required String firstName,
    @JsonKey(name: 'familyname') required String familyName,
    @JsonKey(name: 'contact_phone') required String contactPhone,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'to_commune_name') required String toCommuneName,
    @JsonKey(name: 'to_wilaya_name') required String toWilayaName,
    @JsonKey(name: 'product_list') required String productList,
    @JsonKey(name: 'price') required int price,
    @JsonKey(name: 'do_insurance') required bool doInsurance,
    @JsonKey(name: 'declared_value') required int declaredValue,
    @JsonKey(name: 'height') required int height,
    @JsonKey(name: 'width') required int width,
    @JsonKey(name: 'length') required int length,
    @JsonKey(name: 'weight') required int weight,
    @JsonKey(name: 'freeshipping') required bool freeShipping,
    @JsonKey(name: 'is_stopdesk') required bool isStopDesk,
    @JsonKey(name: 'stopdesk_id') String? stopDeskId,
    @JsonKey(name: 'has_exchange') required bool hasExchange,
    @JsonKey(name: 'product_to_collect') String? productToCollect,

    /// State code for backend territory resolution (e.g., "09" for Blida)
    /// This is used by the backend to resolve the actual wilaya/commune names
    @JsonKey(name: 'state_code') String? stateCode,

    /// City code for backend territory resolution
    /// This is used by the backend to resolve the actual commune name
    @JsonKey(name: 'city_code') String? cityCode,
  }) = _YalidineOrderCreateRequest;

  factory YalidineOrderCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$YalidineOrderCreateRequestFromJson(json);
}
