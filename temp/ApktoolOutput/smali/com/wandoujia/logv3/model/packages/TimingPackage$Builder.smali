.class public final Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TimingPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/TimingPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public duration:Ljava/lang/Long;

.field public end:Ljava/lang/Long;

.field public start:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/TimingPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 68
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage;->start:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->start:Ljava/lang/Long;

    .line 70
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage;->end:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->end:Ljava/lang/Long;

    .line 71
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage;->duration:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->duration:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/TimingPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/TimingPackage;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TimingPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/TimingPackage;-><init>(Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final duration(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->duration:Ljava/lang/Long;

    .line 86
    return-object p0
.end method

.method public final end(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->end:Ljava/lang/Long;

    .line 81
    return-object p0
.end method

.method public final start(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->start:Ljava/lang/Long;

    .line 76
    return-object p0
.end method
