# Smart-Contract1

## Overloading Example

SimpleStorage.sol
```````````````````````
contract SimpleStorage {

  uint256 favoriteNumber;
  
  function store(uint256 _favoriteNumber) public virtual {
     favoriteNumber = _favoriteNumber;
  }
  ...
}
```````````````````````
ExtraStorage.sol
```````````````````````
import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
```````````````````````



[![Roberto Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/roberto-sparacio-b98ab9225/)
