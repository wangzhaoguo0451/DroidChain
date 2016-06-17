.class final Lemx;
.super Ljava/lang/Object;
.source "LogReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lemu;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lemw;


# direct methods
.method constructor <init>(Lemw;Lemu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lemx;->c:Lemw;

    iput-object p2, p0, Lemx;->a:Lemu;

    iput-object p3, p0, Lemx;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 72
    iget-object v1, p0, Lemx;->c:Lemw;

    iget-object v2, p0, Lemx;->a:Lemu;

    iget-object v3, p0, Lemx;->b:Landroid/content/Context;

    new-instance v4, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    invoke-direct {v4}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;-><init>()V

    new-instance v0, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;-><init>()V

    invoke-virtual {v2}, Lemu;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->udid(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->udid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/IdPackage;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->id_package(Lcom/wandoujia/logv3/model/packages/IdPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    new-instance v5, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;

    invoke-direct {v5}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;-><init>()V

    invoke-virtual {v2}, Lemu;->d()Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->product(Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;

    move-result-object v6

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->isDeviceTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->ANDROID_TABLET:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    :goto_0
    invoke-virtual {v6, v0}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->platform(Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lemu;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->first_source(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lemu;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->last_source(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->locale(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->SIMPLE_CHINESE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->language(Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->version_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->version_code(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;

    invoke-virtual {v5}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ClientPackage;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->client_package(Lcom/wandoujia/logv3/model/packages/ClientPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    new-instance v0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_elapsed_time(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_timestamp(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/TimePackage;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->time_package(Lcom/wandoujia/logv3/model/packages/TimePackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    invoke-virtual {v4}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/CommonPackage;

    move-result-object v0

    invoke-static {v1, v0}, Lemw;->a(Lemw;Lcom/wandoujia/logv3/model/packages/CommonPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage;

    .line 73
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->ANDROID_PHONE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    goto :goto_0
.end method
