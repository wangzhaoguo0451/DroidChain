.class public Ldwn;
.super Ljava/lang/Object;
.source "SuffixResolveUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Ldwn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldwn;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v0, Ldwn;->a:Ljava/lang/String;

    const-string v2, "resolveSuffix"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {p0}, Ld;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Ld;->d(Ljava/lang/String;I)Lhqe;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lhqe;->a:Lhqd;

    iget v4, v4, Lhqd;->c:I

    add-int/lit8 v4, v4, 0x10

    add-int/2addr v0, v4

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_1
    :goto_1
    return v1

    .line 56
    :cond_2
    const/4 v2, 0x0

    .line 57
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhqe;

    .line 58
    const-string v4, "Wdj"

    iget-object v5, v0, Lhqe;->a:Lhqd;

    iget-object v5, v5, Lhqd;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    :goto_2
    if-eqz v0, :cond_1

    .line 67
    iget-object v2, v0, Lhqe;->a:Lhqd;

    .line 68
    sget-object v3, Ldwn;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "headerModel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    if-eqz v2, :cond_1

    .line 73
    const/16 v3, 0x4a

    iget-char v4, v2, Lhqd;->b:C

    if-ne v3, v4, :cond_4

    .line 74
    iget-object v0, v0, Lhqe;->b:Ljava/lang/String;

    invoke-static {v0}, Ldwn;->a(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 75
    :cond_4
    const/16 v3, 0x42

    iget-char v2, v2, Lhqd;->b:C

    if-ne v3, v2, :cond_1

    .line 76
    iget-object v0, v0, Lhqe;->b:Ljava/lang/String;

    const-string v2, "_"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, "+"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/Base64;->decode([BI)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 77
    invoke-static {v1}, Ldwn;->a(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_1

    .line 76
    :cond_6
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    sget-object v0, Ldwn;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jsonContent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 108
    :cond_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 111
    :try_start_0
    const-class v3, Lcom/wandoujia/p4/model/suffix/SuffixContentModel;

    invoke-virtual {v0, p0, v3}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/model/suffix/SuffixContentModel;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    if-nez v0, :cond_1

    move v0, v1

    .line 117
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 119
    :cond_1
    sget-object v3, Ldwn;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SuffixContentModel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, v0, Lcom/wandoujia/p4/model/suffix/SuffixContentModel;->appDownload:Lcom/wandoujia/p4/model/suffix/AppDownload;

    .line 122
    if-nez v0, :cond_2

    move v0, v1

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    const-string v3, "download_by_url"

    iget-object v4, v0, Lcom/wandoujia/p4/model/suffix/AppDownload;->downloadType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    sget-object v2, Ldwn;->a:Ljava/lang/String;

    const-string v3, "download_by_url"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v1, v0, Lcom/wandoujia/p4/model/suffix/AppDownload;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/wandoujia/p4/model/suffix/AppDownload;->downloadUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/wandoujia/p4/model/suffix/AppDownload;->iconUrl:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/p4/model/suffix/AppDownload;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Ldwn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Ldwp;

    invoke-direct {v5, v1, v2, v0, v3}, Ldwp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :cond_4
    const-string v3, "download_by_package_name"

    iget-object v4, v0, Lcom/wandoujia/p4/model/suffix/AppDownload;->downloadType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    sget-object v3, Ldwn;->a:Ljava/lang/String;

    const-string v4, "download_by_package_name"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v1, v0, Lcom/wandoujia/p4/model/suffix/AppDownload;->packageName:Ljava/lang/String;

    new-instance v3, Lfvx;

    invoke-direct {v3}, Lfvx;-><init>()V

    invoke-virtual {v3}, Lfvx;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxg;

    iput-object v1, v0, Lfxg;->a:Ljava/lang/String;

    :try_start_1
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/IAppDetailInfo;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppDetailInfo;->getAppDetailTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldwn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ldwq;

    invoke-direct {v3, v1, v0}, Ldwq;-><init>(Ljava/lang/String;Lcom/wandoujia/entities/app/IAppDetailInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0e0362

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 144
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/wandoujia/appmanager/AppManager;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldwn;->b(Ljava/lang/String;)V

    .line 158
    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e06a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ldwn;->b(Ljava/lang/String;)V

    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :cond_1
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldwn;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldwo;

    invoke-direct {v1, p0}, Ldwo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method
