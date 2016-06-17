.class public Lcom/wandoujia/p4/video2/model/VideoPlayModel;
.super Ljava/lang/Object;
.source "VideoPlayModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field public static final APP_INTENT_TYPE_ACTION:I = 0x8

.field public static final APP_INTENT_TYPE_ACTION_VIEW:I = 0x1

.field public static final APP_INTENT_TYPE_COMPONENT:I = 0x2

.field public static final APP_INTENT_TYPE_EXTRA:I = 0x4

.field public static final FLAG_OPEN_TYPE_APP_ACTION:I = 0x8

.field public static final FLAG_OPEN_TYPE_APP_EXTRA:I = 0x4

.field public static final FLAG_OPEN_TYPE_APP_URI:I = 0x2

.field public static final FLAG_OPEN_TYPE_HTML5:I = 0x10

.field public static final FLAG_OPEN_TYPE_WAP:I = 0x1

.field private static final HTML5:Ljava/lang/String; = "html5"

.field private static final PATTERN_SPLIT:Ljava/lang/String; = "#_#"

.field public static final PROMOTION_FRONT_PLAY_WAP:I = 0x8

.field public static final PROMOTION_PLAY_APP:I = 0x1

.field public static final PROMOTION_PLAY_DOWNLOAD:I = 0x4

.field public static final PROMOTION_PLAY_WAP:I = 0x2

.field private static final serialVersionUID:J = -0x3e142c5cf7d944cfL


# instance fields
.field public final html5PlayUrl:Ljava/lang/String;

.field public final openType:I

.field public final packageName:Ljava/lang/String;

.field private playType:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

.field public final promoteType:I

.field public final providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

.field public final providerName:Ljava/lang/String;

.field public final providerOpenInfo:Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

.field public final wapPlayUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/video/PlayInfo;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->packageName:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getParams()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->wapPlayUrl:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getPromotType()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->promoteType:I

    .line 130
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getOpenType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    .line 132
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    .line 133
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->buildProviderOpenInfo(Lcom/wandoujia/p4/video/model/ProviderInfo;Lcom/wandoujia/entities/video/PlayInfo;)Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerOpenInfo:Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

    .line 138
    :goto_2
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->refreshPlayType()V

    .line 139
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v2, "html5"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getOpenType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 136
    :cond_2
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerOpenInfo:Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

    goto :goto_2
.end method

.method private static buildProviderOpenInfo(Lcom/wandoujia/p4/video/model/ProviderInfo;Lcom/wandoujia/entities/video/PlayInfo;)Lcom/wandoujia/p4/search/model/ProviderOpenInfo;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 271
    new-instance v0, Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

    invoke-direct {v0}, Lcom/wandoujia/p4/search/model/ProviderOpenInfo;-><init>()V

    .line 272
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/search/model/ProviderOpenInfo;->providerName:Ljava/lang/String;

    .line 273
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppVersionCode()I

    move-result v1

    iput v1, v0, Lcom/wandoujia/p4/search/model/ProviderOpenInfo;->minVersion:I

    .line 274
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPromotVersionCode()I

    move-result v1

    iput v1, v0, Lcom/wandoujia/p4/search/model/ProviderOpenInfo;->minWdjVersion:I

    .line 275
    new-instance v1, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;

    invoke-direct {v1}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;-><init>()V

    .line 276
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->setAction(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->setComponent(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->setData(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/PlayInfo;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->parseExtras(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->setExtras(Ljava/util/List;)V

    .line 280
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->setPackageName(Ljava/lang/String;)V

    .line 281
    iput-object v1, v0, Lcom/wandoujia/p4/search/model/ProviderOpenInfo;->intent:Lcom/wandoujia/push/protocol/PushEntityV1$Intent;

    .line 282
    return-object v0
.end method

.method private canPlayByApp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerOpenInfo:Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    iget v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 219
    :cond_2
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerOpenInfo:Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

    iget v2, v2, Lcom/wandoujia/p4/search/model/ProviderOpenInfo;->minVersion:I

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v1

    if-gt v2, v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerOpenInfo:Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

    iget v1, v1, Lcom/wandoujia/p4/search/model/ProviderOpenInfo;->minWdjVersion:I

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canPlayByAppNeedInstall()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 228
    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerOpenInfo:Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    iget v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    if-eq v2, v4, :cond_2

    iget v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    if-ne v2, v5, :cond_3

    :cond_2
    move v0, v1

    .line 234
    goto :goto_0

    .line 236
    :cond_3
    iget v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v2, v2, 0x2

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v2, v2, 0x4

    if-eq v2, v4, :cond_4

    iget v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v5, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private canPlayByHTML5()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 242
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iget v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canPlayByWAP()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 259
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->wapPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    iget v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static parseExtras(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 289
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 290
    const-string v6, "#_#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 291
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 292
    new-instance v6, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;

    invoke-direct {v6}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;-><init>()V

    .line 293
    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->setKey(Ljava/lang/String;)V

    .line 294
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->setValue(Ljava/lang/String;)V

    .line 295
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    return-object v2
.end method


# virtual methods
.method public buildAppPlayIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    .line 158
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->playType:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    sget-object v2, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    if-eq v1, v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerOpenInfo:Lcom/wandoujia/p4/search/model/ProviderOpenInfo;

    iget-object v2, v2, Lcom/wandoujia/p4/search/model/ProviderOpenInfo;->intent:Lcom/wandoujia/push/protocol/PushEntityV1$Intent;

    .line 164
    iget v3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v3}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppIntentType()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v0, v1

    .line 171
    goto :goto_0

    .line 175
    :cond_2
    iget v3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 177
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getComponent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v0, v1

    .line 179
    goto :goto_0

    .line 183
    :cond_3
    iget v3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getExtras()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getExtras()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 185
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getComponent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getExtras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;

    .line 187
    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 191
    goto/16 :goto_0

    .line 195
    :cond_6
    iget v3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->openType:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getExtras()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getExtras()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getComponent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getExtras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;

    .line 201
    if-eqz v0, :cond_7

    .line 202
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    move-object v0, v1

    .line 205
    goto/16 :goto_0
.end method

.method public getPlayType()Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->playType:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    return-object v0
.end method

.method public refreshPlayType()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->canPlayByApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    sget-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->playType:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->canPlayByHTML5()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    sget-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->HTML5:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->playType:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    goto :goto_0

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->canPlayByWAP()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    sget-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->WAP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->playType:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    goto :goto_0

    .line 152
    :cond_3
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->canPlayByAppNeedInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP_NEED_INSTALL:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->playType:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    goto :goto_0
.end method
