# MovingPictureApp
Giphy API의 Gif 파일들을 불러오고 검색할 수 있는 앱을 만듭니다.   

## 목차
[1. 라이브러리](#라이브러리)   
[2. 프레임워크](#프레임워크)   
[3. 미리보기](#미리보기)   
[4. 기능](#기능)   

#### 라이브러리   
|이름|목적|버전|
|:------:|:---:|:---:|
|Alamofire|HTTP 통신|5.6.1|
|Kingfisher|URL 이미지 주소를 가진 이미지 불러오기|7.2.0|
|SnapKit|Auto Layout|5.6.0|
|Then|클로저를 통한 인스턴스 생성 시 깔끔한 코드 작성|3.0.0|
   
#### 프레임워크
- UIKit
   
#### 미리보기
![MovingPictureApp-preview](https://user-images.githubusercontent.com/76255765/167103487-13466ab2-3335-4f6d-819a-80aa18fec668.gif)

메인화면의 서치바에서 검색키워드를 입력하면 그 결과에 맞는 gif 이미지를 보여주고 앱 인터페이스를 변경 가능합니다.
  
#### 기능
   
* 검색
  * searchBar에 입력한 텍스트값으로 HTTP 통신을 하고 검색 결과를 CollectionView에 보여줍니다.
  * 검색 결과를 선택하면 DetailViewController로 이동하고, 선택한 대상의 gif와 title 정보를 보여줍니다.

* 좋아요
  * 상세화면에서 좋아요 버튼을 누르면 UserDefaults에 값을 저장하고 이후에도 해당 상태를 유지합니다.
  * FavoriteViewController에 좋아요를 누른 gif와 title 정보를 보여주고 좋아요 취소 시 사라집니다.

* 다크모드
  * 화면 설정에서 다크모드를 설정하는 스위치를 isOn하면 앱의 인터페이스를 다크모드로 변경합니다.
  * UserDefaults를 사용하여 앱의 인터페이스를 기억합니다.
  * SceneDelegate에 적용하여 앱 전체 인터페이스에 적용합니다.
