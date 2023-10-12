# aws cli 버전 확인
aws --version

# 키페어 생성 - 키페어 이름은 예시, 사용하는 이름으로 변경해서 쓸 것
aws ec2 create-key-pair --key-name MyKeyPair2 --query 'KeyMaterial' --output text > MyKeyPair2.pem

# 키페어 권한 변경
chmod 400 MyKeyPair2.pem

# 웹 콘솔에서 사용할 aws os 코드 확인: 예) ami-033a6a056910d1137 
aws ec2 run-instances --image-id ami-033a6a056910d1137 \ --count 1 --instance-type t2.micro \
--key-name MyKeyPair2

# ssh 접속 - 하기전에 인바운드 설정 해야함
ssh -i "MyKeyPair2.pem" ec2-user@ec2-3-35-16-10.ap-northeast-2.compute.amazonaws.com