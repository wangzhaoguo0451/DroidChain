.class public final Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IASQueryInfoPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public ias_bucket_package:Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;

.field public ias_request_content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 63
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage;->ias_bucket_package:Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$Builder;->ias_bucket_package:Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;

    .line 65
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage;->ias_request_content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$Builder;->ias_request_content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage;-><init>(Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final ias_bucket_package(Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;)Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$Builder;->ias_bucket_package:Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;

    .line 73
    return-object p0
.end method

.method public final ias_request_content_package(Lcom/wandoujia/logv3/model/packages/ContentPackage;)Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$Builder;->ias_request_content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    .line 81
    return-object p0
.end method
