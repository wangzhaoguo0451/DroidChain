.class public final Levc;
.super Ljava/lang/Object;
.source "AppModelImpl.java"

# interfaces
.implements Leiu;


# instance fields
.field private final a:Lcom/wandoujia/entities/app/IAppLiteInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/app/IAppLiteInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLitePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteDownloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteVersionCode()I

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteCompatible()Z

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteIncompatibleDetail()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLitePaidStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->isFreeTraffic()Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteDetailParam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteAd()Z

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteAdType()I

    move-result v0

    return v0
.end method

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ExtensionPack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getExtensionPacks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkObbInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getApkObbs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteDisplayStatUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v1}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteDetailParam()Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    const-string v2, "bid="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 122
    const-string v5, "bid="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    const-string v0, "bid="

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    return-object v0

    .line 121
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final s()Lcom/wandoujia/entities/app/UseInfo;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Levc;->a:Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getUseInfo()Lcom/wandoujia/entities/app/UseInfo;

    move-result-object v0

    return-object v0
.end method
