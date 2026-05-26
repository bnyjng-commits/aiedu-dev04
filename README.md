# 토론 의견 수집 앱

중학교 수학동아리 토론 활동용 실시간 의견 수집 웹앱

## 사용 순서

### 1. Supabase 설정
1. [supabase.com](https://supabase.com)에서 프로젝트 생성
2. `supabase_setup.sql` 내용을 **SQL Editor**에 붙여넣고 실행
3. Project Settings → API에서 **URL**과 **anon key** 복사

### 2. config.js 작성
```js
const SUPABASE_URL = 'https://xxxx.supabase.co';
const SUPABASE_ANON_KEY = 'eyJ...';
```

### 3. GitHub Pages 배포
1. GitHub에 `aiedu-dev01` 레포 생성
2. `index.html`, `.gitignore`, `README.md` push  
   (**config.js는 절대 push 금지** — .gitignore에 포함됨)
3. Settings → Pages → Branch: main 설정

## 화면 구성
| 화면 | 대상 | 역할 |
|---|---|---|
| 설정 | 교사 | 주제 입력, 학교급 선택 |
| 학생 입력 | 학생 | 입장·이유·근거 등 제출 |
| 전체 조회 | 교사 | 의견 목록·통계·필터 |

## 주의사항
- `config.js`는 GitHub에 push하지 않습니다
- 단일 `index.html` 파일로 구성됩니다
