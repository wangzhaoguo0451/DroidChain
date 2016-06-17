.class public final Lcom/wandoujia/api/proto/EnjoySummary$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EnjoySummary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/EnjoySummary;",
        ">;"
    }
.end annotation


# instance fields
.field public dislikeCount:Ljava/lang/Integer;

.field public likeCount:Ljava/lang/Integer;

.field public target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/EnjoySummary;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 72
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/EnjoySummary;->target:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/EnjoySummary$Builder;->target:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/wandoujia/api/proto/EnjoySummary;->likeCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/EnjoySummary$Builder;->likeCount:Ljava/lang/Integer;

    .line 75
    iget-object v0, p1, Lcom/wandoujia/api/proto/EnjoySummary;->dislikeCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/EnjoySummary$Builder;->dislikeCount:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/EnjoySummary$Builder;->build()Lcom/wandoujia/api/proto/EnjoySummary;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/EnjoySummary;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/wandoujia/api/proto/EnjoySummary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/EnjoySummary;-><init>(Lcom/wandoujia/api/proto/EnjoySummary$Builder;Ld;)V

    return-object v0
.end method

.method public final dislikeCount(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/EnjoySummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wandoujia/api/proto/EnjoySummary$Builder;->dislikeCount:Ljava/lang/Integer;

    .line 96
    return-object p0
.end method

.method public final likeCount(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/EnjoySummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wandoujia/api/proto/EnjoySummary$Builder;->likeCount:Ljava/lang/Integer;

    .line 88
    return-object p0
.end method

.method public final target(Ljava/lang/String;)Lcom/wandoujia/api/proto/EnjoySummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/wandoujia/api/proto/EnjoySummary$Builder;->target:Ljava/lang/String;

    .line 80
    return-object p0
.end method
