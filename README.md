# 8/29(금) 강의 시 오류가 발생했던 부분을 수정했습니다. 
- 웹브라우저의 Metamask와 RealEstate.sol 와 연결이 되지 않아서, 작업 진행에 필요한 게정을 가져오지 못한 문제였으며, app.js 코드의 loadRealEstates 함수에 연결처리가 되도록 수정하였습니다. 
loadRealEstates: function() {
    App.contracts.RealEstate.deployed().then(function(instance) {
      window.ethereum.enable(); // 추가된 코드
      
      return instance.getAllBuyers.call();
    }).then(function(buyers) {

# Lab2 파일을 다시 다운 받으신 다음 진행해 주십시오.
1. c:\Users\student\ethereum\real-estate> truffle migrate --compile-all --reset --network ganache
2. c:\Users\student\ethereum\real-estate> npm run dev

# 진행에 문제가 있으시면 edowon0623@gmail.com으로 연락 주시기 바랍니다. 
