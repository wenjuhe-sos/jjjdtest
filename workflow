# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东摇钱树

on:
    workflow_dispatch:
    schedule:
        - cron: "20 */3 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_moneyTree

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东摇钱树】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_moneyTree.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东萌宠

on:
    workflow_dispatch:
    schedule:
        - cron: "40 4,10,23 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_pet

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东萌宠】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  PETSHARECODES: ${{ secrets.PETSHARECODES }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  PET_NOTIFY_CONTROL: ${{ secrets.PET_NOTIFY_CONTROL }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_pet.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东金融养猪猪

on:
    workflow_dispatch:
    schedule:
        - cron: "23 16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_petPig

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东金融养猪猪】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_pigPet.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东种豆得豆

on:
    workflow_dispatch:
    schedule:
        - cron: "0 2-14/4 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_plantBean

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【种豆得豆】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  PLANT_BEAN_SHARECODES: ${{ secrets.PLANT_BEAN_SHARECODES }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_plantBean.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东排行榜

on:
    workflow_dispatch:
    schedule:
        - cron: "19 16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_rankingList

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东排行榜】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/yangtingxiao/QuantumultX/raw/master/scripts/jd/jd_rankingList.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 全民抢红包

on:
    workflow_dispatch:
    schedule:
        - cron: "21 0,8,16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_redPacket

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东全民抢红包】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_redPacket.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东进店领豆

on:
    workflow_dispatch:
    schedule:
        - cron: "1 16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_shop

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东进店领豆】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_shop.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东天天加速

on:
    workflow_dispatch:
    schedule:
        - cron: "30 */3 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_speed

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【天天加速】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_speed.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京小超

on:
    workflow_dispatch:
    schedule:
        - cron: "10 */4 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_superMarket

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京小超】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SUPERMARKET_UPGRADE: ${{ secrets.SUPERMARKET_UPGRADE }}
                  jdBusinessCircleJump: ${{ secrets.BUSINESS_CIRCLE_JUMP }}
                  SUPERMARKET_SHARECODES: ${{ secrets.SUPERMARKET_SHARECODES }}
                  jdSuperMarketLottery: ${{ secrets.SUPERMARKET_LOTTERY }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_superMarket.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东取关店铺

on:
    workflow_dispatch:
    schedule:
        - cron: "0 3-11/4 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_unsubscribe

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东取关店铺】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  UNSUBSCRIBE: ${{ secrets.UNSUBSCRIBE }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_unsubscribe.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东小窝

on:
    workflow_dispatch:
    schedule:
        - cron: "19 16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_woHome

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东小窝】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/yangtingxiao/QuantumultX/raw/master/scripts/jd/jd_woHome.js

# File: .github/workflows/repo-sync.yml
name: sync-sazs34-scripts
on:
  schedule:
    - cron: '5 0,15 * * *'
  workflow_dispatch:
  watch:
    types: started
  repository_dispatch:
    types: sync-sazs34-scripts
jobs:
  repo-sync:
    env:
      PAT: ${{ secrets.PAT }} #此处PAT需要申请，教程详见：https://www.jianshu.com/p/bb82b3ad1d11
    runs-on: ubuntu-latest
    if: github.event.repository.owner.id == github.event.sender.id
    steps:
      - uses: actions/checkout@v2
        with:
          persist-credentials: false

      - name: sync sazs34-scripts
        uses: repo-sync/github-sync@v2
        if: env.PAT
        with:
          source_repo: "https://github.com/sazs34/MyActions.git"
          source_branch: "master"
          destination_branch: "main"
          github_token: ${{ secrets.PAT }}

name: 喜马拉雅极速版

on:
    workflow_dispatch:
    schedule:
        - cron: "2,32 * * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: xmly_speed

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - name: Checkout
              uses: actions/checkout@v2

            - name: "Set up Python"
              uses: actions/setup-python@v1
              with:
                  python-version: 3.7

            - name: "安装依赖包"
              run: pip install -r ./requirements.txt

            - name: "运行 喜马拉雅极速版"
              run: python3 xmly_speed.py
              env:
                  XMLY_SPEED_COOKIE: ${{ secrets.XMLY_SPEED_COOKIE }}
                  XMLY_ACCUMULATE_TIME: ${{ secrets.XMLY_ACCUMULATE_TIME }}
                  XMLY_ACCUMULATE_INDEX: ${{ secrets.XMLY_ACCUMULATE_INDEX }}
                  XMLY_ACCUMULATE_HOURS: ${{ secrets.XMLY_ACCUMULATE_HOURS }}
                  XMLY_ANDROID_AGENT: ${{ secrets.XMLY_ANDROID_AGENT }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  SYNCURL: https://github.com/Zero-S1/xmly_speed/raw/master/xmly_speed.py

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京豆昨日收益

on:
    workflow_dispatch:
    schedule:
        - cron: "0 23 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_bean_change

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京豆昨日收益】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_bean_change.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京小超领蓝币

on:
    workflow_dispatch:
    schedule:
        - cron: "5 16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_blueCoin

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行【京小超领蓝币(小费)】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  MARKET_COIN_TO_BEANS: ${{ secrets.MARKET_COIN_TO_BEANS }}
                  MARKET_REWARD_NOTIFY: ${{ secrets.MARKET_REWARD_NOTIFY }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_blueCoin.js

name: 抽京豆

on:
    workflow_dispatch:
    schedule:
        - cron: "20 16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_club_lottery

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - name: Checkout codes
              uses: actions/checkout@v2
            - name: Use Node.js
              uses: actions/setup-node@v1
              with:
                  node-version: "12.x"
            - name: npm install
              run: |
                  npm install
            - name: "运行【抽京豆】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_club_lottery.js

name: 京东每日签到

on:
    workflow_dispatch:
    schedule:
        - cron: "15 16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_daily_bounds

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - name: Checkout codes
              uses: actions/checkout@v2
            - name: Use Node.js
              uses: actions/setup-node@v1
              with:
                  node-version: "12.x"
            - name: Run app
              run: npm install
            - run: node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_BEAN_STOP: ${{ secrets.JD_BEAN_STOP }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_bean_sign.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东金融天天提额

on:
    workflow_dispatch:
    schedule:
        - cron: "22 16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_daily_egg

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东金融天天提额】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_daily_egg.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东农场

on:
    workflow_dispatch:
    schedule:
        - cron: "0 0,5,9 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_fruit
        
jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东农场】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  FRUIT_BEAN_CARD: ${{ secrets.FRUIT_BEAN_CARD }}
                  FRUITSHARECODES: ${{ secrets.FruitShareCodes }}
                  FRUIT_NOTIFY_CONTROL: ${{ secrets.FRUIT_NOTIFY_CONTROL }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_fruit.js

name: 京喜签到

on:
    workflow_dispatch:
    schedule:
        - cron: "5 0,8,16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_jingxi

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - name: Checkout codes
              uses: actions/checkout@v2
            - name: Use Node.js
              uses: actions/setup-node@v1
              with:
                  node-version: "12.x"
            - name: npm install
              run: |
                  npm install
            - name: "运行【京喜每日签到】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/Sunert/Scripts/raw/master/Task/jingxi.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东宠汪汪

on:
    workflow_dispatch:
    schedule:
        - cron: "20 5,19 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_joy

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【宠汪汪】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  JOY_FEED_COUNT: ${{ secrets.JOY_FEED_COUNT }}
                  JOY_RUN_FLAG: ${{ secrets.JOY_RUN_FLAG }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_joy.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东宠汪汪喂食

on:
    workflow_dispatch:
    schedule:
        - cron: "0 2,12,16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_joy_feedPets

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东宠汪汪喂食】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  JOY_FEED_COUNT: ${{ secrets.JOY_FEED_COUNT }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_joy_feedPets.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东宠汪汪喂食2

on:
    workflow_dispatch:
    schedule:
        - cron: "40 8,22 * * *"
    watch:
        types: [started]

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【京东宠汪汪喂食】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  JOY_FEED_COUNT: ${{ secrets.JOY_FEED_COUNT }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_joy_feedPets.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 宠汪汪积分兑换京豆

on:
    workflow_dispatch:
    schedule:
        - cron: "0 0,8,16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_joy_reward

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【宠汪汪积分兑换京豆】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  JD_JOY_REWARD_NOTIFY: ${{ secrets.JD_JOY_REWARD_NOTIFY }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_joy_reward.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东宠汪汪偷好友狗粮和积分

on:
    workflow_dispatch:
    schedule:
        - cron: "0 4,22 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_joy_steal

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【宠汪汪偷好友狗粮与积分】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  JOY_HELP_FEED: ${{ secrets.JOY_HELP_FEED }}
                  SYNCURL: https://github.com/lxk0301/jd_scripts/raw/master/jd_joy_steal.js

# This workflow will do a clean install of node dependencies, build the source code and run tests across different versions of node
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: 京东抽奖机

on:
    workflow_dispatch:
    schedule:
        - cron: "17 16 * * *"
    watch:
        types: [started]
    repository_dispatch:
        types: jd_lotteryMachine

jobs:
    build:
        runs-on: ubuntu-latest
        if: github.event.repository.owner.id == github.event.sender.id
        steps:
            - uses: actions/checkout@v1
            - name: Use Node.js 10.x
              uses: actions/setup-node@v1
              with:
                  node-version: 10.x
            - name: npm install
              run: |
                  npm install
            - name: "运行 【东东抽奖机】【新店福利】【东东福利屋】【东东生活】【闪购盲盒】【疯狂砸金蛋】"
              run: |
                  node onlyOneExecute.js
              env:
                  JD_COOKIE: ${{ secrets.JD_COOKIE }}
                  JD_DEBUG: ${{ secrets.JD_DEBUG }}
                  PUSH_KEY: ${{ secrets.PUSH_KEY }}
                  BARK_PUSH: ${{ secrets.BARK_PUSH }}
                  BARK_SOUND: ${{ secrets.BARK_SOUND }}
                  TG_BOT_TOKEN: ${{ secrets.TG_BOT_TOKEN }}
                  TG_USER_ID: ${{ secrets.TG_USER_ID }}
                  DD_BOT_TOKEN: ${{ secrets.DD_BOT_TOKEN }}
                  DD_BOT_SECRET: ${{ secrets.DD_BOT_SECRET }}
                  SYNCURL: https://github.com/yangtingxiao/QuantumultX/raw/master/scripts/jd/jd_lotteryMachine.js
