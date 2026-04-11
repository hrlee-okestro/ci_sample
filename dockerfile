# Node.js 공식 이미지를 베이스로 사용
FROM node:18-alpine

#작업 디렉토리 설정
WORKDIR /app

# package.json과 package-lock.json 복사
COPY package*.json ./

# 프로덕션 의존성만 설치
RUN npm install

# 소스코드 복사
COPY . .

# 애플리케이션 포트 설정
EXPOSE 3000

# 애플리케이션 실행
CMD ["npm", "start"]
