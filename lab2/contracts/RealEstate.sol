pragma solidity ^0.4.23;

contract RealEstate {
    struct Buyer {
        address buyerAddress;
        string name;
        string email;
    }

    mapping (uint => Buyer) public buyerInfo;
    address public owner;
    address[10] public buyers;


    event LogBuyRealEstate(
        address _buyer,
        uint _id
    );

    constructor() public {
        owner = msg.sender;
    }

    function buyRealEstate(uint _id, string _name, string _email) public payable {
        require(_id >= 0 && _id <= 9);
        buyers[_id] = msg.sender;
        buyerInfo[_id] = Buyer(msg.sender, _name, _email);

        owner.transfer(msg.value); // 이동은 wei로만 가능
        emit LogBuyRealEstate(msg.sender, _id); // 이벤트를 내보내겠다는 메시지 
    }

    function getBuyerInfo(uint _id) public view returns (address, string, string) {
        Buyer memory buyer = buyerInfo[_id];
        return (buyer.buyerAddress, buyer.name, buyer.email);
    }

    function getAllBuyers() public view returns (address[10]) {
        return buyers;
    }
}
