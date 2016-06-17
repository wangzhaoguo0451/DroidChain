.class public final Lctw;
.super Ljava/lang/Object;
.source "LocalAppModelImpl.java"

# interfaces
.implements Leiu;


# instance fields
.field private a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lctw;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lctw;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lctw;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getIcons()Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;->getPx256()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lctw;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, ""

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

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
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

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
    .line 93
    const/4 v0, 0x0

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
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public final s()Lcom/wandoujia/entities/app/UseInfo;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method
