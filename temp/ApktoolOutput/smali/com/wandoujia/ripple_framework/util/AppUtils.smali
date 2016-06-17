.class public final Lcom/wandoujia/ripple_framework/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lhlc;

    invoke-direct {v0}, Lhlc;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->a:Ljava/util/Comparator;

    .line 49
    new-instance v0, Lhld;

    invoke-direct {v0}, Lhld;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->b:Ljava/util/Comparator;

    .line 69
    new-instance v0, Lhle;

    invoke-direct {v0}, Lhle;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->c:Ljava/util/Comparator;

    .line 77
    new-instance v0, Lhlf;

    invoke-direct {v0}, Lhlf;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->d:Ljava/util/Comparator;

    .line 93
    new-instance v0, Lhlg;

    invoke-direct {v0}, Lhlg;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->e:Ljava/util/Comparator;

    .line 101
    new-instance v0, Lhlh;

    invoke-direct {v0}, Lhlh;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->f:Ljava/util/Comparator;

    .line 109
    new-instance v0, Lhli;

    invoke-direct {v0}, Lhli;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->g:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 228
    const/4 v0, 0x0

    .line 230
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 186
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 172
    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 177
    invoke-static {v1}, Lcom/wandoujia/base/utils/TextUtil;->isChinese(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/base/utils/TextUtil;->convert2Pinyin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v1, "^[\\s ]*|[\\s ]*$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic a()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public static a(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->compatible:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->compatible:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static synthetic b()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->d:Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic c()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->f:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->b:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic e()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic f()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic g()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils;->g:Ljava/util/Comparator;

    return-object v0
.end method
