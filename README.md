# Smart-Contract1

## Overloading Example

```````````````````````
contract SimpleStorage {

  uint256 favoriteNumber;
  
  function store(uint256 _favoriteNumber) public virtual {
     favoriteNumber = _favoriteNumber;
  }
  ...
}
```````````````````````

```````````````````````
import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
```````````````````````
gg
