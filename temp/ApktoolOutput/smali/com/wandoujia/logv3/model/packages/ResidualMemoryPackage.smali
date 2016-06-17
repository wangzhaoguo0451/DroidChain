.class public final Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;
.super Lcom/squareup/wire/Message;
.source "ResidualMemoryPackage.java"


# static fields
.field public static final DEFAULT_RESIDUAL_MEMORY_SIZE:Ljava/lang/Long;

.field public static final DEFAULT_RESIDUAL_SDSIZE1:Ljava/lang/Long;

.field public static final DEFAULT_RESIDUAL_SDSIZE2:Ljava/lang/Long;


# instance fields
.field public final residual_memory_size:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final residual_sdsize1:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final residual_sdsize2:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->DEFAULT_RESIDUAL_MEMORY_SIZE:Ljava/lang/Long;

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->DEFAULT_RESIDUAL_SDSIZE1:Ljava/lang/Long;

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->DEFAULT_RESIDUAL_SDSIZE2:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 39
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->residual_memory_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_memory_size:Ljava/lang/Long;

    .line 40
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->residual_sdsize1:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize1:Ljava/lang/Long;

    .line 41
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;->residual_sdsize2:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize2:Ljava/lang/Long;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    if-ne p1, p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 48
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;

    .line 49
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_memory_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_memory_size:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize1:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize1:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize2:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize2:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->hashCode:I

    .line 57
    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_memory_size:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_memory_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize1:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize1:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize2:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->residual_sdsize2:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 61
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ResidualMemoryPackage;->hashCode:I

    .line 63
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_1
.end method
