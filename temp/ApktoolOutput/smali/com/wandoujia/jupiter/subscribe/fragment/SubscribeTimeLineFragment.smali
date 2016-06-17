.class public Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;
.super Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;
.source "SubscribeTimeLineFragment.java"


# static fields
.field private static final d:[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->CATEGORY:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_PORTRAIT_HEADER_BOTTOM:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->TIME_SPLITTER_CARD:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->d:[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;-><init>()V

    .line 171
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic a(Landroid/view/ViewGroup;)Lerf;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    const v0, 0x7f0300af

    invoke-static {p0, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Lduu;

    invoke-direct {v1, v2}, Lduu;-><init>(B)V

    invoke-virtual {v0, v2, v1, v2}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic g()[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->d:[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 2
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
    .line 61
    new-instance v0, Ldtx;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ldtx;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method protected final a()Lum;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lduw;

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->c:Lhaw;

    invoke-direct {v0, p0, v1}, Lduw;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;Lerv;)V

    return-object v0
.end method

.method protected final e()Lhaw;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lduv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lduv;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;B)V

    return-object v0
.end method

.method protected final synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->e()Lhaw;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->onDestroyView()V

    .line 167
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public onEventMainThread(Lhaq;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    sget-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->SUBSCRIBE_STATUS_CHANGE:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    iget-object v1, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->h()V

    .line 126
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->onResume()V

    .line 131
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Landroid/content/Context;)Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;

    const-class v0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUBSCRIBE"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->h()V

    .line 135
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->n:Leqw;

    instance-of v0, v0, Lhhv;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->n:Leqw;

    check-cast v0, Lhhv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhhv;->h:Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const v1, 0x7f030182

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyLayout(I)V

    .line 76
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    new-instance v1, Lduq;

    invoke-direct {v1, p0}, Lduq;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyViewRender(Lhmx;)V

    .line 98
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    new-instance v1, Ldus;

    invoke-direct {v1}, Ldus;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyDataChecker(Lhmw;)V

    .line 118
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
