.class public final Lcom/wandoujia/api/proto/SceneRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SceneRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/SceneRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Lcom/wandoujia/api/proto/UserContext;

.field public pb_version:Ljava/lang/Integer;

.field public scene_id:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/SceneRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 75
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneRequest;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest$Builder;->pb_version:Ljava/lang/Integer;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest$Builder;->context:Lcom/wandoujia/api/proto/UserContext;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneRequest;->scene_id:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/SceneRequest;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/SceneRequest;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest$Builder;->scene_id:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/SceneRequest$Builder;->build()Lcom/wandoujia/api/proto/SceneRequest;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/SceneRequest;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/SceneRequest$Builder;->checkRequiredFields()V

    .line 105
    new-instance v0, Lcom/wandoujia/api/proto/SceneRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/SceneRequest;-><init>(Lcom/wandoujia/api/proto/SceneRequest$Builder;Ld;)V

    return-object v0
.end method

.method public final context(Lcom/wandoujia/api/proto/UserContext;)Lcom/wandoujia/api/proto/SceneRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wandoujia/api/proto/SceneRequest$Builder;->context:Lcom/wandoujia/api/proto/UserContext;

    .line 91
    return-object p0
.end method

.method public final pb_version(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/SceneRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/wandoujia/api/proto/SceneRequest$Builder;->pb_version:Ljava/lang/Integer;

    .line 86
    return-object p0
.end method

.method public final scene_id(Ljava/util/List;)Lcom/wandoujia/api/proto/SceneRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/wandoujia/api/proto/SceneRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Lcom/wandoujia/api/proto/SceneRequest$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneRequest$Builder;->scene_id:Ljava/util/List;

    .line 99
    return-object p0
.end method
