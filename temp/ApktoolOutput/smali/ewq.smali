.class public final Lewq;
.super Lfsi;
.source "AppCommentFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsi",
        "<",
        "Lews;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

.field public b:Lcom/wandoujia/p4/app/detail/model/CommentJson;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lfsi;-><init>()V

    .line 26
    iput-object p1, p0, Lewq;->f:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(II)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lews;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    rem-int v0, p1, p2

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v1, Lewo;

    invoke-direct {v1}, Lewo;-><init>()V

    .line 47
    invoke-virtual {v1}, Lewo;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lewr;

    .line 48
    iput p1, v0, Lewr;->a:I

    .line 49
    iput p2, v0, Lewr;->b:I

    .line 50
    iget-object v2, p0, Lewq;->f:Ljava/lang/String;

    iput-object v2, v0, Lewr;->c:Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    .line 53
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->getComments()Ljava/util/List;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/app/detail/model/CommentJson;

    .line 56
    new-instance v4, Lews;

    invoke-direct {v4, v1}, Lews;-><init>(Lcom/wandoujia/p4/app/detail/model/CommentJson;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->getEnjoySummary()Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

    move-result-object v1

    iput-object v1, p0, Lewq;->a:Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

    .line 59
    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->getSavedComment()Lcom/wandoujia/p4/app/detail/model/CommentJson;

    move-result-object v0

    iput-object v0, p0, Lewq;->b:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    :cond_2
    move-object v0, v2

    .line 61
    goto :goto_0
.end method
