.class public final Lcom/wandoujia/api/proto/CommentSummary$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CommentSummary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/CommentSummary;",
        ">;"
    }
.end annotation


# instance fields
.field public comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/CommentJson;",
            ">;"
        }
    .end annotation
.end field

.field public count:Ljava/lang/Integer;

.field public enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

.field public savedComment:Lcom/wandoujia/api/proto/CommentJson;

.field public target:Ljava/lang/String;

.field public user:Lcom/wandoujia/api/proto/UserCenterInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/CommentSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 90
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary;->count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->count:Ljava/lang/Integer;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary;->target:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->target:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary;->savedComment:Lcom/wandoujia/api/proto/CommentJson;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->savedComment:Lcom/wandoujia/api/proto/CommentJson;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary;->user:Lcom/wandoujia/api/proto/UserCenterInfo;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->user:Lcom/wandoujia/api/proto/UserCenterInfo;

    .line 95
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/CommentSummary;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/CommentSummary;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->comment:Ljava/util/List;

    .line 96
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/CommentSummary$Builder;->build()Lcom/wandoujia/api/proto/CommentSummary;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/CommentSummary;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/wandoujia/api/proto/CommentSummary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/CommentSummary;-><init>(Lcom/wandoujia/api/proto/CommentSummary$Builder;Ld;)V

    return-object v0
.end method

.method public final comment(Ljava/util/List;)Lcom/wandoujia/api/proto/CommentSummary$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/CommentJson;",
            ">;)",
            "Lcom/wandoujia/api/proto/CommentSummary$Builder;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Lcom/wandoujia/api/proto/CommentSummary$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->comment:Ljava/util/List;

    .line 121
    return-object p0
.end method

.method public final count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/CommentSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->count:Ljava/lang/Integer;

    .line 101
    return-object p0
.end method

.method public final enjoySummary(Lcom/wandoujia/api/proto/EnjoySummary;)Lcom/wandoujia/api/proto/CommentSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    .line 126
    return-object p0
.end method

.method public final savedComment(Lcom/wandoujia/api/proto/CommentJson;)Lcom/wandoujia/api/proto/CommentSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->savedComment:Lcom/wandoujia/api/proto/CommentJson;

    .line 111
    return-object p0
.end method

.method public final target(Ljava/lang/String;)Lcom/wandoujia/api/proto/CommentSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->target:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public final user(Lcom/wandoujia/api/proto/UserCenterInfo;)Lcom/wandoujia/api/proto/CommentSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentSummary$Builder;->user:Lcom/wandoujia/api/proto/UserCenterInfo;

    .line 116
    return-object p0
.end method
