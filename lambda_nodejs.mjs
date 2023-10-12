// index.mjs


// exports.handler: Node.js가 실행할 때 가장 먼저 참조
// event: 사용자의 입력값
// context: exports.handler의 시스템 상태값
// callback: 반환할 값, 이 함수에서 처리하고 반환
export const handler = async (event, context, callback) => {
  const output = "success lambda api test: " + event.val01;
  // callback으로 output을 반환: 첫번째 인수는 Error / 즉, Error가 없으니
  // 그 다음 output인수를 참조하라는 의미
  callback(null, output);
};
