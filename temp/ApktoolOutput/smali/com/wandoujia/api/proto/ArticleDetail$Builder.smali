.class public final Lcom/wandoujia/api/proto/ArticleDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ArticleDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/ArticleDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public content_html:Ljava/lang/String;

.field public is_ad:Ljava/lang/Boolean;

.field public published_date:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/ArticleDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 75
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/ArticleDetail;->published_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->published_date:Ljava/lang/Long;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/api/proto/ArticleDetail;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->author:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/api/proto/ArticleDetail;->is_ad:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->is_ad:Ljava/lang/Boolean;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/api/proto/ArticleDetail;->content_html:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->content_html:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final author(Ljava/lang/String;)Lcom/wandoujia/api/proto/ArticleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->author:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->build()Lcom/wandoujia/api/proto/ArticleDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/ArticleDetail;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/wandoujia/api/proto/ArticleDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/ArticleDetail;-><init>(Lcom/wandoujia/api/proto/ArticleDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final content_html(Ljava/lang/String;)Lcom/wandoujia/api/proto/ArticleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->content_html:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public final is_ad(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/ArticleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->is_ad:Ljava/lang/Boolean;

    .line 94
    return-object p0
.end method

.method public final published_date(Ljava/lang/Long;)Lcom/wandoujia/api/proto/ArticleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->published_date:Ljava/lang/Long;

    .line 84
    return-object p0
.end method
