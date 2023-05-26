// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("MapLand")));
bytes32 constant MapLandTableId = _tableId;

struct MapLandData {
  address tokenAddress;
  uint256 tokenId;
  string image;
}

library MapLand {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](3);
    _schema[0] = SchemaType.ADDRESS;
    _schema[1] = SchemaType.UINT256;
    _schema[2] = SchemaType.STRING;

    return SchemaLib.encode(_schema);
  }

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](3);
    _fieldNames[0] = "tokenAddress";
    _fieldNames[1] = "tokenId";
    _fieldNames[2] = "image";
    return ("MapLand", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Register the table's schema (using the specified store) */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Set the table's metadata (using the specified store) */
  function setMetadata(IStore _store) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get tokenAddress */
  function getTokenAddress(bytes32 value) internal view returns (address tokenAddress) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0);
    return (address(Bytes.slice20(_blob, 0)));
  }

  /** Get tokenAddress (using the specified store) */
  function getTokenAddress(IStore _store, bytes32 value) internal view returns (address tokenAddress) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0);
    return (address(Bytes.slice20(_blob, 0)));
  }

  /** Set tokenAddress */
  function setTokenAddress(bytes32 value, address tokenAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((tokenAddress)));
  }

  /** Set tokenAddress (using the specified store) */
  function setTokenAddress(IStore _store, bytes32 value, address tokenAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((tokenAddress)));
  }

  /** Get tokenId */
  function getTokenId(bytes32 value) internal view returns (uint256 tokenId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get tokenId (using the specified store) */
  function getTokenId(IStore _store, bytes32 value) internal view returns (uint256 tokenId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set tokenId */
  function setTokenId(bytes32 value, uint256 tokenId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((tokenId)));
  }

  /** Set tokenId (using the specified store) */
  function setTokenId(IStore _store, bytes32 value, uint256 tokenId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((tokenId)));
  }

  /** Get image */
  function getImage(bytes32 value) internal view returns (string memory image) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2);
    return (string(_blob));
  }

  /** Get image (using the specified store) */
  function getImage(IStore _store, bytes32 value) internal view returns (string memory image) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2);
    return (string(_blob));
  }

  /** Set image */
  function setImage(bytes32 value, string memory image) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    StoreSwitch.setField(_tableId, _keyTuple, 2, bytes((image)));
  }

  /** Set image (using the specified store) */
  function setImage(IStore _store, bytes32 value, string memory image) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    _store.setField(_tableId, _keyTuple, 2, bytes((image)));
  }

  /** Get the length of image */
  function lengthImage(bytes32 value) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 2, getSchema());
    return _byteLength / 1;
  }

  /** Get the length of image (using the specified store) */
  function lengthImage(IStore _store, bytes32 value) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 2, getSchema());
    return _byteLength / 1;
  }

  /** Get an item of image (unchecked, returns invalid data if index overflows) */
  function getItemImage(bytes32 value, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 2, getSchema(), _index * 1, (_index + 1) * 1);
    return (string(_blob));
  }

  /** Get an item of image (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItemImage(IStore _store, bytes32 value, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 2, getSchema(), _index * 1, (_index + 1) * 1);
    return (string(_blob));
  }

  /** Push a slice to image */
  function pushImage(bytes32 value, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    StoreSwitch.pushToField(_tableId, _keyTuple, 2, bytes((_slice)));
  }

  /** Push a slice to image (using the specified store) */
  function pushImage(IStore _store, bytes32 value, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    _store.pushToField(_tableId, _keyTuple, 2, bytes((_slice)));
  }

  /** Pop a slice from image */
  function popImage(bytes32 value) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    StoreSwitch.popFromField(_tableId, _keyTuple, 2, 1);
  }

  /** Pop a slice from image (using the specified store) */
  function popImage(IStore _store, bytes32 value) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    _store.popFromField(_tableId, _keyTuple, 2, 1);
  }

  /** Update a slice of image at `_index` */
  function updateImage(bytes32 value, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    StoreSwitch.updateInField(_tableId, _keyTuple, 2, _index * 1, bytes((_slice)));
  }

  /** Update a slice of image (using the specified store) at `_index` */
  function updateImage(IStore _store, bytes32 value, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    _store.updateInField(_tableId, _keyTuple, 2, _index * 1, bytes((_slice)));
  }

  /** Get the full data */
  function get(bytes32 value) internal view returns (MapLandData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 value) internal view returns (MapLandData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(bytes32 value, address tokenAddress, uint256 tokenId, string memory image) internal {
    bytes memory _data = encode(tokenAddress, tokenId, image);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    StoreSwitch.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(IStore _store, bytes32 value, address tokenAddress, uint256 tokenId, string memory image) internal {
    bytes memory _data = encode(tokenAddress, tokenId, image);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    _store.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using the data struct */
  function set(bytes32 value, MapLandData memory _table) internal {
    set(value, _table.tokenAddress, _table.tokenId, _table.image);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 value, MapLandData memory _table) internal {
    set(_store, value, _table.tokenAddress, _table.tokenId, _table.image);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal view returns (MapLandData memory _table) {
    // 52 is the total byte length of static data
    PackedCounter _encodedLengths = PackedCounter.wrap(Bytes.slice32(_blob, 52));

    _table.tokenAddress = (address(Bytes.slice20(_blob, 0)));

    _table.tokenId = (uint256(Bytes.slice32(_blob, 20)));

    // Store trims the blob if dynamic fields are all empty
    if (_blob.length > 52) {
      uint256 _start;
      // skip static data length + dynamic lengths word
      uint256 _end = 84;

      _start = _end;
      _end += _encodedLengths.atIndex(0);
      _table.image = (string(SliceLib.getSubslice(_blob, _start, _end).toBytes()));
    }
  }

  /** Tightly pack full data using this table's schema */
  function encode(address tokenAddress, uint256 tokenId, string memory image) internal view returns (bytes memory) {
    uint40[] memory _counters = new uint40[](1);
    _counters[0] = uint40(bytes(image).length);
    PackedCounter _encodedLengths = PackedCounterLib.pack(_counters);

    return abi.encodePacked(tokenAddress, tokenId, _encodedLengths.unwrap(), bytes((image)));
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(bytes32 value) internal pure returns (bytes32[] memory _keyTuple) {
    _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 value) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 value) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((value));

    _store.deleteRecord(_tableId, _keyTuple);
  }
}
