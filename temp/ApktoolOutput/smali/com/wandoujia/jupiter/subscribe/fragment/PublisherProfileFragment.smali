.class public Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;
.super Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;
.source "PublisherProfileFragment.java"


# instance fields
.field public d:[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

.field public e:[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;-><init>()V

    .line 39
    new-array v0, v4, [Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_MICRO:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->TIME_SPLITTER_CARD:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->d:[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 44
    new-array v0, v4, [Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->GROUP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->TIME_SPLITTER_CARD:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->e:[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 130
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v3, p0}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Lhaz;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->p:Lhaz;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Lhaz;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->p:Lhaz;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Lhaz;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->p:Lhaz;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->n:Leqw;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    new-instance v0, Ldtx;

    const-string v1, "http://apis.wandoujia.com/five/v1/follow/publishers/%s/feeds?format=proto"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->q:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ldtx;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method protected final a()Lum;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ldue;

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->c:Lhaw;

    invoke-direct {v0, p0, v1}, Ldue;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;Lerv;)V

    return-object v0
.end method

.method protected final b(Leqw;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->r:Z

    if-nez v0, :cond_2

    .line 72
    invoke-virtual {p1}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_1

    .line 73
    invoke-virtual {p1, v1}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1, v1}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 75
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/PublisherDetail;->nick:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->r:Z

    .line 80
    :cond_2
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->b(Leqw;)V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()Lhaw;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ldud;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldud;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;B)V

    return-object v0
.end method

.method protected final synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->e()Lhaw;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argu_publisher_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->q:Ljava/lang/String;

    .line 52
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
