.class public final Lcom/wandoujia/api/proto/FavorLogRequest;
.super Lcom/squareup/wire/Message;
.source "FavorLogRequest.java"


# static fields
.field public static final DEFAULT_LOG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/FavorLog;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PB_VERSION:Ljava/lang/Integer;


# instance fields
.field public final log:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/FavorLog;",
            ">;"
        }
    .end annotation
.end field

.field public final pb_version:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLogRequest;->DEFAULT_PB_VERSION:Ljava/lang/Integer;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLogRequest;->DEFAULT_LOG:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/FavorLogRequest$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 27
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogRequest$Builder;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->pb_version:Ljava/lang/Integer;

    .line 28
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogRequest$Builder;->log:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/FavorLogRequest;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->log:Ljava/util/List;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/FavorLogRequest$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/FavorLogRequest;-><init>(Lcom/wandoujia/api/proto/FavorLogRequest$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-static {p0}, Lcom/wandoujia/api/proto/FavorLogRequest;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    if-ne p1, p0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/FavorLogRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 35
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/FavorLogRequest;

    .line 36
    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->pb_version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLogRequest;->pb_version:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLogRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->log:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLogRequest;->log:Ljava/util/List;

    .line 37
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLogRequest;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->hashCode:I

    .line 43
    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->pb_version:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->pb_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 45
    :goto_0
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->log:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest;->hashCode:I

    .line 48
    :cond_0
    return v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
