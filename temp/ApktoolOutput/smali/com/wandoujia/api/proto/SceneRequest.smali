.class public final Lcom/wandoujia/api/proto/SceneRequest;
.super Lcom/squareup/wire/Message;
.source "SceneRequest.java"


# static fields
.field public static final DEFAULT_PB_VERSION:Ljava/lang/Integer;

.field public static final DEFAULT_SCENE_ID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final context:Lcom/wandoujia/api/proto/UserContext;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public final pb_version:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final scene_id:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/SceneRequest;->DEFAULT_PB_VERSION:Ljava/lang/Integer;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/SceneRequest;->DEFAULT_SCENE_ID:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/SceneRequest$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 37
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneRequest$Builder;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest;->pb_version:Ljava/lang/Integer;

    .line 38
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneRequest$Builder;->context:Lcom/wandoujia/api/proto/UserContext;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    .line 39
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneRequest$Builder;->scene_id:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/SceneRequest;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest;->scene_id:Ljava/util/List;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/SceneRequest$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/SceneRequest;-><init>(Lcom/wandoujia/api/proto/SceneRequest$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-static {p0}, Lcom/wandoujia/api/proto/SceneRequest;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 44
    if-ne p1, p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/SceneRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 46
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/SceneRequest;

    .line 47
    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneRequest;->pb_version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneRequest;->pb_version:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    .line 48
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneRequest;->scene_id:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneRequest;->scene_id:Ljava/util/List;

    .line 49
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneRequest;->equals(Ljava/util/List;Ljava/util/List;)Z

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

    .line 54
    iget v0, p0, Lcom/wandoujia/api/proto/SceneRequest;->hashCode:I

    .line 55
    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest;->pb_version:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest;->pb_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 57
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/SceneRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/UserContext;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest;->scene_id:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest;->scene_id:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 59
    iput v0, p0, Lcom/wandoujia/api/proto/SceneRequest;->hashCode:I

    .line 61
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
