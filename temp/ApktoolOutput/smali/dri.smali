.class public Ldri;
.super Ljava/lang/Object;
.source "RippleRecommender.java"

# interfaces
.implements Lhat;


# static fields
.field private static final a:I

.field private static final b:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    const-class v0, Ldri;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Ldri;->a:I

    .line 174
    new-array v0, v7, [[Ljava/lang/String;

    const/16 v1, 0x25

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "one.hh.oneclient"

    aput-object v2, v1, v4

    const-string v2, "com.brixd.niceapp"

    aput-object v2, v1, v5

    const-string v2, "com.zhihu.daily.android"

    aput-object v2, v1, v6

    const-string v2, "com.bdatu.geography"

    aput-object v2, v1, v7

    const-string v2, "com.douban.daily"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "com.ifanr.activitys"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.rakutec.android.iweekly"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.lofter.android"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.zhan_dui.animetaste"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.wandoujia.eyepetizer"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.qdaily.ui"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "com.douban.frodo"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.douban.movie"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "com.dada.ditto"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "com.vsco.cam"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "cn.com.modernmedia.ideat"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "com.yinyuetai.ui"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "com.mtime"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "cn.com.mm.ui"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "com.zhihu.android"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "com.mci.worldscreen.phone"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "com.movier.magicbox"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "com.fivehundredpx.viewer"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "vmovier.com.activity"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "com.sankuai.movie"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "com.yahoo.mobile.client.android.flickr"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "com.mrocker.cheese"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "com.tenge.smart"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "com.sanlian"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "com.funinput.digit"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "viva.reader"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "com.xiaomi.xy.sportscamera"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "cn.com.modernmedia.tanc"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "com.duitang.main"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "com.zhongduomei.rrmj.society"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "cn.com.modernmedia.modernlady"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "cn.onewaystreet.weread"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0x3a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.wzm.moviepic"

    aput-object v2, v1, v4

    const-string v2, "com.instagram.android"

    aput-object v2, v1, v5

    const-string v2, "com.infzm.daily.know"

    aput-object v2, v1, v6

    const-string v2, "com.by.butter.camera"

    aput-object v2, v1, v7

    const-string v2, "nfpeople.phone.com.mediapad"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "com.mzread.dayan"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.xinli.yixinli"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.guokr.android"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.sspai.client"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.behance.behance"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.gopro.smarty"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "com.pinterest"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.baidu.tieba"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "com.yahoo.mobile.client.android.atom"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "org.wikipedia"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "com.xiachufang"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "com.smzdm.client.android"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "com.liangcang"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "com.wandoujia.sonic"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "com.ted.android"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "com.netease.vopen"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "com.ballistiq.artstation"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "com.microsoft.bing"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "com.imdb.mobile"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "org.goodev.droidddle"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "com.mm.goodlife"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "cn.fotomen.reader"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "com.liwushuo.gifttalk"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "com.ricebook.highgarden"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "com.danielstudio.app.wowtu"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "com.zcool.community"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "com.xiangqu.app"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "com.mfw.roadbook"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "com.jzyd.BanTang"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "com.shanbay.news"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "com.thefancy.app"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "com.deviantart.android.damobile"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "com.baidu.iknow"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "org.idaxiang.android"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "com.breadtrip"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "com.pianke.client"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "com.chanyouji.android"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "com.duowan.lolbox"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "android.zhibo8"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "com.zol.android"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "com.meilishuo"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "com.douguo.recipe"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "in.huohua.Yuki"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "com.jianshu.haruki"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "com.baozoumanhua.android"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "com.haobao.wardrobe"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "com.yiche.price"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "cn.com.open.mooc"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "com.eastmoney.android.berlin"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "com.xingin.xhs"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "com.mobile17173.game"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "com.jesson.meishi"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "com.yourdream.app.android"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x5f

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.huofar"

    aput-object v2, v1, v4

    const-string v2, "com.guoku"

    aput-object v2, v1, v5

    const-string v2, "bbc.mobile.news.ww"

    aput-object v2, v1, v6

    const-string v2, "qsbk.app"

    aput-object v2, v1, v7

    const-string v2, "cn.com.modernmedia.lohas"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "com.condenast.gq24"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.to8to.assistant.activity"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.kuaikan.comic"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.insthub.voguemini"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.hujiang.news"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "cc.huochaihe.app"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "com.medium.reader"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.jiecao.news.jiecaonews"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "com.douban.dongxi"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "com.wumii.android.SITE.app_2q3ySOY"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "com.nice.main"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "com.ninegag.android.app"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "com.myzaker.ZAKER_Phone"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "gov.nasa"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "com.android36kr.app"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "com.wallstreetcn.news"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "com.caijing"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "com.kingnez.umasou.app"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "com.taguxdesign.yixi"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "com.ruanmei.ithome"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "com.cubic.autohome"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "com.huxiu"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "com.technode.yiwen"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "com.android.xymens"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "me.topit.TopAndroid2"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "com.ft"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "cn.com.modernmedia.businessweek"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "com.ss.android.essay.joke"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "com.xueqiu.android"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "com.yixia.videoeditor"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "com.haodou.recipe"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "com.gift.android"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "com.mandongkeji.comiclover"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "com.netease.pris"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "cn.tianya.light"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "com.dongqiudi.news"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "com.yiche.autoeasy"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "com.yoho"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "com.fittimellc.fittime"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "com.qyer.android.jinnang"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "com.yidian.design"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "com.mrocker.demo8"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "com.jiemian.news"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "com.happyjuzi.apps.juzi"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "com.youdao.huihui.deals"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "com.autohome.usedcar"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "com.douban.group"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "com.baozou.baozou.android"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "cn.com.pconline.android.browser"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "cn.dxy.android.aspirin"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "me.suncloud.marrymemo"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "com.appgame.master"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "com.yetang"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "im.naodong.gaonengfun"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "com.guokr.zhixing"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "com.feibo.yizhong"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "com.mobilesrepublic.appygeekchina"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "com.gamedashi.dtcq.daota"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "com.xcar.activity"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "com.aipai.android_minecraft"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "net.coollet.infzmreader"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "net.csdn.csdnplus"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "cn.dxy.medicinehelper"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "com.yidian.photo"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "com.theotino.chinadaily"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "gov.pianzong.androidnga"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "com.hoodinn.strong"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "com.seed.app"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "com.xianguo.pad"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "com.gamersky"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "com.banciyuan.bcywebview"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "com.hexun.news"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "net.oschina.app"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "com.businessvalue.android.app"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "com.imgur.mobile"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "com.mobilesrepublic.appy"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "com.ermiao"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "la.jiangzhi.jz"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "com.palmtrends.ecykr"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "com.guardian"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "com.mobile.ign"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "com.mogujie.top"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "com.nis.app"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "com.mobile01.android.forum"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "com.mashable.android.phoenix"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "com.sleepnova.punapp"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "co.vine.android"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "com.tumblr"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "com.pocketnow.app"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "com.technobuffalo.app"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    sput-object v0, Ldri;->b:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;->REMOVED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->P()J

    move-result-wide v0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 65
    sub-long v2, v4, v0

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    .line 66
    invoke-static {v4, v5}, Lcom/wandoujia/p4/configs/Config;->g(J)V

    goto :goto_0

    .line 71
    :cond_2
    sub-long v0, v4, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->Q()I

    move-result v6

    .line 75
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    .line 80
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    .line 82
    const-string v1, "com.wandoujia"

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    const-string v1, "com.wandoujia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->d(I)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x3

    if-ge v1, v3, :cond_6

    sget-object v3, Ldri;->b:[[Ljava/lang/String;

    aget-object v8, v3, v1

    array-length v9, v8

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v9, :cond_5

    aget-object v10, v8, v3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 96
    :goto_4
    if-ltz v1, :cond_7

    .line 101
    :goto_5
    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    .line 106
    invoke-static {v4, v5}, Lcom/wandoujia/p4/configs/Config;->g(J)V

    .line 107
    add-int/lit8 v2, v6, 0x1

    invoke-static {v2}, Lcom/wandoujia/p4/configs/Config;->d(I)V

    .line 109
    new-instance v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ContentPackage;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package(Lcom/wandoujia/logv3/model/packages/ContentPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PUSH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->READY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v2

    const-string v3, "notification_ripple_app_uninstall"

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v2

    sget-object v3, Lham;->f:Lham;

    iget-object v3, v3, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {v3, v2, v0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lham;->f:Lham;

    const-string v3, "navigation"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    const-string v3, "wdj://apps/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.wandoujia"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "launch_from"

    const-string v4, "notification_push"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "launch_keyword"

    const-string v4, "notification_ripple_app_uninstall"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v0, 0x7f080024

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt v1, v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const v1, 0x7f080024

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v0

    const v1, 0x7f080023

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v0

    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v0

    sget v1, Ldri;->a:I

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Ldjv;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 95
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v1, -0x1

    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 100
    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v1, v0

    move-object v0, v2

    goto/16 :goto_5
.end method
