.class public final Ldxz;
.super Ljava/lang/Object;
.source "AppModelWrapper.java"

# interfaces
.implements Leiu;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->title:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$000(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->icon:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$100(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->downloadSize:J
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$200(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->packageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$300(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->downloadUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$400(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->downloadVersionCode:I
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$500(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)I

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->downloadMd5:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$600(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->compatible:Z
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$700(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Z

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
    .line 103
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->incompatibleDetail:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$800(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->paidStatus:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$900(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->freeTraffic:Z
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$1000(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->detailParam:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$1100(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->ad:Z
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$1200(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Z

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->adType:I
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$1300(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)I

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
    .line 133
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->extensionPacks:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$1400(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/util/List;

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
    .line 138
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->apkObbs:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$1500(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->displayStatUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$1700(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->bid:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$1800(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/wandoujia/entities/app/UseInfo;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Ldxz;->a:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    #getter for: Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->useInfo:Lcom/wandoujia/entities/app/UseInfo;
    invoke-static {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->access$1600(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)Lcom/wandoujia/entities/app/UseInfo;

    move-result-object v0

    return-object v0
.end method
