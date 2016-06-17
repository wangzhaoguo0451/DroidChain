.class public final Lcom/wandoujia/api/proto/ReviewBean$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReviewBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/ReviewBean;",
        ">;"
    }
.end annotation


# instance fields
.field public head_image:Ljava/lang/String;

.field public operation_title:Ljava/lang/String;

.field public recommend_wording:Ljava/lang/String;

.field public story:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/StoryParagraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/ReviewBean;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 76
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/ReviewBean;->operation_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean$Builder;->operation_title:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/api/proto/ReviewBean;->head_image:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean$Builder;->head_image:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ReviewBean;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ReviewBean;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean$Builder;->story:Ljava/util/List;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/api/proto/ReviewBean;->recommend_wording:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean$Builder;->recommend_wording:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ReviewBean$Builder;->build()Lcom/wandoujia/api/proto/ReviewBean;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/ReviewBean;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/wandoujia/api/proto/ReviewBean;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/ReviewBean;-><init>(Lcom/wandoujia/api/proto/ReviewBean$Builder;Ld;)V

    return-object v0
.end method

.method public final head_image(Ljava/lang/String;)Lcom/wandoujia/api/proto/ReviewBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wandoujia/api/proto/ReviewBean$Builder;->head_image:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public final operation_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/ReviewBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/wandoujia/api/proto/ReviewBean$Builder;->operation_title:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public final recommend_wording(Ljava/lang/String;)Lcom/wandoujia/api/proto/ReviewBean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wandoujia/api/proto/ReviewBean$Builder;->recommend_wording:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public final story(Ljava/util/List;)Lcom/wandoujia/api/proto/ReviewBean$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/StoryParagraph;",
            ">;)",
            "Lcom/wandoujia/api/proto/ReviewBean$Builder;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p1}, Lcom/wandoujia/api/proto/ReviewBean$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean$Builder;->story:Ljava/util/List;

    .line 95
    return-object p0
.end method
