.class public final Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoProviderAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter;->a:Ljava/util/List;

    .line 30
    return-void
.end method

.method private a(I)Lcom/wandoujia/p4/video2/model/VideoPlayModel;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter;->a(I)Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    if-nez p2, :cond_1

    .line 36
    invoke-static {p3}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;

    move-result-object p2

    .line 41
    :goto_0
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter;->a(I)Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v0

    .line 42
    iget-object v1, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->getIconView()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v1

    iget-object v2, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0044

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 46
    :cond_0
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget-object v1, Lgfk;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->getPlayType()Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_1
    return-object p2

    .line 38
    :cond_1
    check-cast p2, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;

    goto :goto_0

    .line 50
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->setPlayByApp(Z)V

    goto :goto_1

    .line 54
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->setPlayByApp(Z)V

    goto :goto_1

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
