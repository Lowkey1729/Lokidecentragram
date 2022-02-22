pragma solidity ^0.5.0;

contract LokiDecentraliseGram {
    string public name = "LokiDecentraliseGram";

    //Store Images
    uint public imageCount = 0;
    mapping(uint => Image) public images;

    struct Image {
        uint id;
        string hash;
        string description;
        uint tipAmount;
        address payable author;

    }

    event ImageCreated(
        uint id,
        string hash,
        string description,
        uint tipAmount,
        address payable author
    );

    // Create Images
    function uploadImage(string memory _imgHash, string memory _description) public {
        imageCount++;
        images[imageCount] = Image(imageCount, _imgHash, _description, 0, msg.sender);

        emit ImageCreated(imageCount, _imgHash, _description, 0, msg.sender);
    }
    // Tip images


}