.class public final Lgee;
.super Ljava/lang/Object;
.source "VideoCardButtonSelector.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;
.implements Lcom/wandoujia/mvc/Unbindable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lfar;",
        "Lcom/wandoujia/p4/video2/model/VideoMetaModel;",
        ">;",
        "Lcom/wandoujia/mvc/Unbindable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Lfar;Lcom/wandoujia/p4/video2/model/VideoMetaModel;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0e04d2

    .line 26
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 29
    :cond_0
    sget-object v0, Lgeg;->a:[I

    iget-object v1, p1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    invoke-interface {p0}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    invoke-interface {p0}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfaq;

    new-instance v5, Lgef;

    invoke-direct {v5, v1, p1, v2}, Lgef;-><init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;)V

    invoke-direct {v4, v3, v5}, Lfaq;-><init>(Ljava/lang/CharSequence;Lcom/wandoujia/mvc/Action;)V

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto :goto_0

    .line 32
    :pswitch_0
    invoke-interface {p0}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    invoke-interface {p0}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lfaq;

    const v3, 0x7f010042

    new-instance v4, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;

    iget-object v5, p1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {v4, v1, p1, v5}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;-><init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->LIST:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    iput-object v1, v4, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->b:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    invoke-direct {v2, v3, v6, v4}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    check-cast p1, Lfar;

    check-cast p2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-static {p1, p2}, Lgee;->a(Lfar;Lcom/wandoujia/p4/video2/model/VideoMetaModel;)V

    return-void
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
