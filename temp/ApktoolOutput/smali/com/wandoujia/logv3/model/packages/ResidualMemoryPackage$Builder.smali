.class public final Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ResidualMemoryPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public residual_memory_size:Ljava/lang/Long;

.field public residual_sdsize1:Ljava/lang/Long;

.field public residual_sdsize2:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 77
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_memory_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->residual_memory_size:Ljava/lang/Long;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize1:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->residual_sdsize1:Ljava/lang/Long;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize2:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->residual_sdsize2:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final residual_memory_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->residual_memory_size:Ljava/lang/Long;

    .line 88
    return-object p0
.end method

.method public final residual_sdsize1(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->residual_sdsize1:Ljava/lang/Long;

    .line 96
    return-object p0
.end method

.method public final residual_sdsize2(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->residual_sdsize2:Ljava/lang/Long;

    .line 104
    return-object p0
.end method
