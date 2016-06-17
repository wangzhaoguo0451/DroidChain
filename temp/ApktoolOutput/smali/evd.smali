.class public final Levd;
.super Ljava/lang/Object;
.source "AppModelWrapper.java"

# interfaces
.implements Leiu;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->title:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$000(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->icon:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$100(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadSize:J
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$200(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->packageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$300(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$400(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadVersionCode:I
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$500(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)I

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->downloadMd5:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$600(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->compatible:Z
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$700(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Z

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
    .line 102
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->incompatibleDetail:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$800(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->paidStatus:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$900(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->freeTraffic:Z
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$1000(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->detailParam:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$1100(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->ad:Z
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$1200(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Z

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->adType:I
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$1300(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)I

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
    .line 132
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->extensionPacks:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$1400(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/util/List;

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
    .line 137
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->apkObbs:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$1500(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->displayStatUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$1700(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->bid:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$1800(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/wandoujia/entities/app/UseInfo;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Levd;->a:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->useInfo:Lcom/wandoujia/entities/app/UseInfo;
    invoke-static {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->access$1600(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)Lcom/wandoujia/entities/app/UseInfo;

    move-result-object v0

    return-object v0
.end method
