.class public final Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IASSearchResultPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;",
        ">;"
    }
.end annotation


# instance fields
.field public content_vertical_type:Ljava/lang/String;

.field public score:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 160
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->content_vertical_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;->content_vertical_type:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->score:Ljava/lang/Float;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;->score:Ljava/lang/Float;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;->build()Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;->checkRequiredFields()V

    .line 181
    new-instance v0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;-><init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;Ld;)V

    return-object v0
.end method

.method public final content_vertical_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;->content_vertical_type:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public final score(Ljava/lang/Float;)Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;->score:Ljava/lang/Float;

    .line 175
    return-object p0
.end method
