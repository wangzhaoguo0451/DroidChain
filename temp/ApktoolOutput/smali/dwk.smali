.class public final Ldwk;
.super Ljava/lang/Object;
.source "AppDetailUtil.java"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldwk;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Point;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 159
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 161
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v0, v0, v3

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 165
    :try_start_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 166
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 167
    if-le v1, v2, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b008f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 170
    mul-int v3, v0, v2

    div-int v1, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    :catch_0
    move-exception v0

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private static a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->YES:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    invoke-virtual {v0}, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->getPurchase()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 76
    const v0, 0x7f0e0328

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    if-nez v0, :cond_1

    .line 86
    const-string v0, ""

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v0, v0, Lcom/wandoujia/api/proto/DownloadUrl;->market:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    const/16 v0, 0xd0

    if-ge p1, v0, :cond_0

    .line 406
    const-string v0, "http://www.wandoujia.com/award/blog/%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://www.wandoujia.com/award/blog/%s?version=2"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    if-eqz p0, :cond_0

    const v0, 0x7f0e0327

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0e0326

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/api/proto/AppDetail;Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/api/proto/AppDetail;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    invoke-static {v0, p1}, Ldwk;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f0e031a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p1}, Ldwk;->a(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f0e031e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p1}, Ldwk;->b(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 207
    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f0e031b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ldwk;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 216
    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f0e031c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_3
    invoke-static {p0}, Ldwk;->c(Lcom/wandoujia/api/proto/AppDetail;)J

    move-result-wide v2

    .line 224
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 225
    new-instance v0, Landroid/util/Pair;

    const v4, 0x7f0e0323

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ldwk;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3, v5}, Lcom/wandoujia/base/utils/DateUtil;->timeStamp2Date(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_4
    invoke-static {p0}, Ldwk;->g(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 233
    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f0e0324

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_5
    invoke-static {p0}, Ldwk;->a(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 240
    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f0e031f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    if-eqz v0, :cond_7

    .line 247
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Developer;->name:Ljava/lang/String;

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 249
    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f0e0318

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_7
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    .line 257
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_8

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_8
    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f0e031d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_9
    return-object v1

    .line 256
    :cond_a
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->permission_group:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e05e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    const-string v1, "http://www.wandoujia.com/manual_testing?from=P5"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Ld;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 414
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, ""

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->size:Ljava/lang/String;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->EN:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    invoke-virtual {v0}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const v0, 0x7f0e0311

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->CHS:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    invoke-virtual {v0}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const v0, 0x7f0e0316

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->CHT:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    invoke-virtual {v0}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    const v0, 0x7f0e0315

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_2
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->JA:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    invoke-virtual {v0}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    const v0, 0x7f0e0312

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_3
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->KO:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    invoke-virtual {v0}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    const v0, 0x7f0e0313

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_4
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->OTHER:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    invoke-virtual {v0}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    const v0, 0x7f0e0314

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    if-eqz p0, :cond_0

    const v0, 0x7f0e0310

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0e030f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/wandoujia/api/proto/AppDetail;Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/api/proto/AppDetail;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 272
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/util/Pair;

    const v1, 0x7f0e0319

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 284
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Tag;

    .line 285
    iget-object v7, v0, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    if-eqz v7, :cond_1

    .line 286
    iget-object v7, v0, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->GAME_TYPE:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    invoke-virtual {v8}, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->getTagType()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 288
    if-eqz v4, :cond_2

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, v0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    .line 293
    :cond_3
    iget-object v7, v0, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->GAME_THEME:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    invoke-virtual {v8}, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->getTagType()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 294
    if-eqz v3, :cond_4

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 297
    :cond_4
    iget-object v0, v0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    .line 299
    :cond_5
    iget-object v7, v0, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->GAME_STYLE:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    invoke-virtual {v8}, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->getTagType()I

    move-result v8

    if-ne v7, v8, :cond_15

    .line 300
    if-eqz v1, :cond_6

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 303
    :cond_6
    iget-object v0, v0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    :goto_1
    move-object v1, v0

    .line 306
    goto/16 :goto_0

    .line 309
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 310
    new-instance v0, Landroid/util/Pair;

    const v6, 0x7f0e0322

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 316
    new-instance v0, Landroid/util/Pair;

    const v4, 0x7f0e0321

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 322
    new-instance v0, Landroid/util/Pair;

    const v3, 0x7f0e0320

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 329
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    invoke-static {v0, p1}, Ldwk;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 331
    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f0e031a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_b
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 337
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p1}, Ldwk;->a(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 339
    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f0e031e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_c
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 346
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p1}, Ldwk;->b(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 348
    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f0e031b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_d
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 354
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ldwk;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 356
    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f0e031c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_e
    invoke-static {p0}, Ldwk;->c(Lcom/wandoujia/api/proto/AppDetail;)J

    move-result-wide v0

    .line 363
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_f

    .line 364
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f0e0323

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ldwk;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1, v6}, Lcom/wandoujia/base/utils/DateUtil;->timeStamp2Date(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_f
    invoke-static {p0}, Ldwk;->g(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 371
    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f0e0324

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_10
    invoke-static {p0}, Ldwk;->a(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 379
    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f0e031f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_11
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    if-eqz v0, :cond_12

    .line 385
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Developer;->name:Ljava/lang/String;

    .line 386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 387
    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f0e0318

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_12
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 395
    :goto_2
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 396
    new-instance v0, Landroid/util/Pair;

    const v1, 0x7f0e031d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_13
    return-object v5

    .line 394
    :cond_14
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v2, v0, Lcom/wandoujia/api/proto/ApkDetail;->permission:Ljava/util/List;

    goto :goto_2

    :cond_15
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static c(Lcom/wandoujia/api/proto/AppDetail;)J
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->creation:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->creation:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 105
    :goto_0
    return-wide v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->updated_date:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->updated_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->updated_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 105
    goto :goto_0
.end method

.method public static d(Lcom/wandoujia/api/proto/AppDetail;)J
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 120
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static f(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v0, v0, Lcom/wandoujia/api/proto/DownloadUrl;->url:Ljava/lang/String;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static g(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
