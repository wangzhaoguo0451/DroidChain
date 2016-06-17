.class final Ldmu;
.super Lhhl;
.source "DownloadNavigatePresenter.java"


# instance fields
.field private synthetic a:Ldmt;


# direct methods
.method constructor <init>(Ldmt;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Ldmu;->a:Ldmt;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 26
    iget-object v0, p0, Ldmu;->a:Ldmt;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v6

    .line 29
    :cond_1
    iget-object v0, p0, Ldmu;->a:Ldmt;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 30
    sget-object v1, Ldmv;->a:[I

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 34
    :pswitch_0
    const-string v1, "com.wandoujia.game_launcher"

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    sget-object v1, Lham;->f:Lham;

    const-string v2, "navigation"

    invoke-virtual {v1, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v2, p0, Ldmu;->a:Ldmt;

    invoke-virtual {v2}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ldmu;->a:Ldmt;

    iget-object v3, v3, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v4, p0, Ldmu;->a:Ldmt;

    invoke-virtual {v4}, Ldmt;->e()Landroid/view/View;

    move-result-object v4

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_1
    sget-object v1, Lham;->f:Lham;

    const-string v2, "navigation"

    invoke-virtual {v1, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v2, p0, Ldmu;->a:Ldmt;

    invoke-virtual {v2}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->n:Ljava/lang/String;

    new-instance v3, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wdj://videos/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
