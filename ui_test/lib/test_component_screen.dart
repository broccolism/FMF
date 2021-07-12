import 'package:flutter/material.dart';

class TestComponentScreen extends StatelessWidget {
  const TestComponentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                color: Colors.white,
                margin: EdgeInsets.only(top: 40),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 46,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade300, width: 1),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey),
                            ),
                            Container(width: 6),
                            Text(
                              "haaana_aaa03",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(height: 27),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.shade200, width: 1),
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.grey.shade100,
                              ),
                              child: Center(
                                child: Text(
                                  "AI 뷰티 검색은 잼페이스!",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(height: 48),
                      Text(
                        "5층 집은 어떻게 구성하는 게 좋을까?",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          height: 1.3,
                        ),
                      ),
                      Container(height: 10),
                      Text(
                        "사이드프로젝트에는 어느 정도의 강제성이 필요하다. 우리는 때론, 아니 아주 많이 다양한 곳에서 흐지부지한 사람이다. 연초 헬스장에 돈을 기부해본 경험, 토요일 꼭 필요한",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            height: 1.6),
                      ),
                      Container(height: 72),
                      Text(
                        "신규 카페\n놀러오세요",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            height: 1.2),
                      ),
                      Container(height: 18),
                      Text(
                        "없습니다. 학점이 같은 경우, 수강학점 수가 많은 순서, 전공과목 수가 많은 순서 등으로 이미 동점자가 없도록",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 1.6),
                      ),
                      Container(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 104,
                            height: 104,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          Container(width: 10),
                          Container(
                            width: 104,
                            height: 104,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          Container(width: 10),
                          Container(
                            width: 104,
                            height: 104,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          Container(width: 10),
                          Container(
                            width: 104,
                            height: 104,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ],
                      ),
                      Container(height: 9),
                      Row(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                          ),
                          Container(width: 10),
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(height: 55),
                      Text(
                        "이런 경험들도 있어요\n그러게 말이에요",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            height: 1.27),
                      ),
                      Container(height: 10),
                      Text(
                        "안녕하세요. 오늘의집에서 두번째로 온라인 집들이를 하게 되었네요. 여전히 인테리어 디자인을 업으로 삼고 있습니다. 결혼을 준비하면서, 결혼을 한 후에도 서울에 있는 것을 당연하게 생각해왔는데 막상 진짜 집을 구하려하니 말도안되는 가격의 집값들이 저희의 기대를 와장창 깨주었습니다.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.68),
                      ),
                      Container(height: 35),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 44,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueAccent.shade700),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  "집 구경하러 가기",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 48,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueAccent.shade700),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  "집 구경하러 가기",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(height: 56),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(width: 71, color: Colors.grey.shade300),
                    Container(width: 71, color: Colors.grey.shade300),
                    Container(width: 71, color: Colors.grey.shade300),
                    Container(width: 71, color: Colors.grey.shade300),
                    Container(width: 71, color: Colors.grey.shade300),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
