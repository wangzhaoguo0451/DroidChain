.class public final Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IASQueryInfoPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public session_buicket_id:Ljava/lang/Integer;

.field public user_bucket_id:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 140
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->user_bucket_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;->user_bucket_id:Ljava/lang/Integer;

    .line 142
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->session_buicket_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;->session_buicket_id:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;-><init>(Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final session_buicket_id(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;->session_buicket_id:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method

.method public final user_bucket_id(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;->user_bucket_id:Ljava/lang/Integer;

    .line 147
    return-object p0
.end method
