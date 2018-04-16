# 싱글톤(Singleton)
매번 똑같은 하나의 인스턴스만을 반환하도록 하는 클래스 설계 방식

싱글톤 패턴은 가장 사용하기 쉬운 형태의 패턴으로, 프로그램 내에서 단 하나의 인스턴스로만 관리할클래스에
대해 사용한다. 구현 및 사용이 간단한 만큼 남용하기 쉬운데 한 번 생성된 이후에는 프로그램 종료시까지 항상
메모리에 상주하게 되므로 필요한 경우에만 적절히 활용해야 메모리가 낭비되는 것을 막을 수 있다.

# 팩토리 메소드(Factory Method)
객체를 생성하는 인터페이스를 정의하되,실제 객체 생성은 해당 객체가 속한 서브 클래스에게 맡기는 것

팩토리 메소드를 사용하면 좋은 경우
-런타임 시에 정확히 어떤 클래스의 객체가 생성될 지 예상할 수 없을 때
-생성되는 객체의 클래스들을 특정 클래스의 서브 클래스들로 두고자 할 때
-어떤 클래스에서 도우미(helper)클래스들을 서브 클래스로 갖고 있으면서 그 서브 클래스 중 하나의 객체를
생성하여 반환하고자 할 때 이 패턴을 활용하면 생성되어 반환되는 객체들의 클래스가 변경될 때 더 유연하게
대처할 수 있다.

팩토리 메소드 장단점
팩토리 매소드를 사용하면 객체를 생성하는 클라이언트 입장에서는 공통 인터페이스에 있는 팩토리 메소드에 대해
서만 알면 된다. 클래스 상속 구조에 새로운 클래스가 추가되거나 내부 구현의 상태가 변형 되어도 클라이언트 코드는
변경할 필요가 없다.생성되어 반환되는 실제 객체의 인터페이스는 기존 코드에서 사용하던 것과 동일하기 때문이다.
다만 팩토리 메소드는 각 타입별로 클래스를 생성해주어야 하므로 객체 생성이 중첩되기 시작할 경우 클래스가 너무 많아질 뿐 아니라 이로 인해 복잡해질 수 있다는 점을 주의해야한다.

# 추상 팩토리(Abstract Factory)
추상 팩토리 패턴은 팩토리 메소드 패턴에 대한 일종의 확장 개념이다. 사용자가 어떤 Factory를 사용할 지 결정
하기만 하면 이 Factory에서 생산되는 product가 자연스럽게 변경될 수 있도록 만드는 것이 이 패턴의 핵심이다.
이 방식을 통해 많은 수의 연관된 서브 클래스를 특정 그룹으로 묶어 한번에 교체할 수 있다.
장점 
1.특정한 팩토리 객체를 만들고 이와 연관되는 객체들을 하나의 그룹으로 묶어 쉽게 생성하고 사용할 수 있다.
2.공통으로 사용되는 인터페이스를 정의할 수 있다.
3.객체 생성과정 및 세부 구현 내용을 캡슐화할 수 있다.
4.향후 새롭게 추가되는 기능에 대하여 유연하게 변경할 수 있다.
# 어댑터(Adapter)
한 클래스의 인터페이스를 사용자가 원하는 다른 인터페이스에 맞게 변환시켜주는 패탠 어댑터 패턴은 인터페이스
의 호환문제로 함께 쓸 수 없는 클래스를 연결해 사용할 수 있도록 해주는 역할을 한다. 

어댑터 패턴의 구조
1) 클래스 어댑터
-Adapter가 Target 타입과 동시에 Adaptee 타입이어야 하므로 다중 상속이 가능한 경우에만 가능
-Adaptee 전체를 다시 구현하지 않아도 되는 장점이 있으며 Adaptee의 행동을 오버라이드 가능
2) 객체 어댑터
클래스 어댑터와 비교해 Adapter와 Adaptee의 관계가 'is a(상속) '관계에서 'has a(포함)'관계로 변경되었다.
이런 경우에는 Adapter에서 Adaptee 객체의 참조를 갖고 있어야 한다.

어댑터 패턴이 유용한경우
-기존 클래스의 인터페이스가 우리가 필요한 것과 일치하지 않을 때
-인터페이스가 호환되지 않는 다른 클래스들과 함께 사용할 수 있는 재사용 가능한 클래스를 원할 때
-어떤 클래스의 여러 서브 클래스들을 다른 클래스의 인터페이스와 맞추어 재사용 하고 싶을때 각 서브 클래스에서 어탭터 클래스를 따로 인터페이스하는 것은 비효율적이다.이 때 부모 클래스와 인터페이스 하는 객체 어댑터를 사용한다.



## 참고서적

* (모바일 개발자를 위한) 프로 오브젝티브-C 디자인 패턴

---


