.class public Lcom/wandoujia/p4/app/button/model/AppModelWrapper;
.super Ljava/lang/Object;
.source "AppModelWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad:Z

.field private adType:I

.field private apkObbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkObbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bid:Ljava/lang/String;

.field private compatible:Z

.field private detailParam:Ljava/lang/String;

.field private displayStatUrl:Ljava/lang/String;

.field private downloadMd5:Ljava/lang/String;

.field private downloadSize:J

.field private downloadUrl:Ljava/lang/String;

.field private downloadVersionCode:I

.field private extensionPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ExtensionPack;",
            ">;"
        }
    .end annotation
.end field

.field private freeTraffic:Z

.field private icon:Ljava/lang/String;

.field private incompatibleDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private paidStatus:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private useInfo:Lcom/wandoujia/entities/app/UseInfo;


# direct methods
.method public constructor <init>(Leiu;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-interface {p1}, Leiu;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->title:Ljava/lang/String;

    .line 38
    invoke-interface {p1}, Leiu;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->icon:Ljava/lang/String;

    .line 39
    invoke-interface {p1}, Leiu;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadSize:J

    .line 40
    invoke-interface {p1}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->packageName:Ljava/lang/String;

    .line 41
    invoke-interface {p1}, Leiu;->f()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadVersionCode:I

    .line 42
    invoke-interface {p1}, Leiu;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadMd5:Ljava/lang/String;

    .line 43
    invoke-interface {p1}, Leiu;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadUrl:Ljava/lang/String;

    .line 44
    invoke-interface {p1}, Leiu;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->compatible:Z

    .line 45
    invoke-interface {p1}, Leiu;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->freeTraffic:Z

    .line 46
    invoke-interface {p1}, Leiu;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->extensionPacks:Ljava/util/List;

    .line 47
    invoke-interface {p1}, Leiu;->p()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->apkObbs:Ljava/util/List;

    .line 48
    invoke-interface {p1}, Leiu;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->displayStatUrl:Ljava/lang/String;

    .line 49
    invoke-interface {p1}, Leiu;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->paidStatus:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Leiu;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->incompatibleDetail:Ljava/util/List;

    .line 51
    invoke-interface {p1}, Leiu;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->bid:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Leiu;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->detailParam:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Leiu;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->ad:Z

    .line 54
    invoke-interface {p1}, Leiu;->n()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->adType:I

    .line 55
    invoke-interface {p1}, Leiu;->s()Lcom/wandoujia/entities/app/UseInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->useInfo:Lcom/wandoujia/entities/app/UseInfo;

    .line 56
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->freeTraffic:Z

    return v0
.end method

.method public static synthetic access$1100(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->detailParam:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1200(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->ad:Z

    return v0
.end method

.method public static synthetic access$1300(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->adType:I

    return v0
.end method

.method public static synthetic access$1400(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->extensionPacks:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$1500(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->apkObbs:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$1600(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Lcom/wandoujia/entities/app/UseInfo;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->useInfo:Lcom/wandoujia/entities/app/UseInfo;

    return-object v0
.end method

.method public static synthetic access$1700(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->displayStatUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1800(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->bid:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)J
    .locals 2
    .parameter

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadSize:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadVersionCode:I

    return v0
.end method

.method public static synthetic access$600(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadMd5:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->compatible:Z

    return v0
.end method

.method public static synthetic access$800(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->incompatibleDetail:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->paidStatus:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAppModel$7b145623()Leiu;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Levd;

    invoke-direct {v0, p0}, Levd;-><init>(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)V

    return-object v0
.end method
