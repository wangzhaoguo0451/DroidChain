.class public final Lfff;
.super Ljava/lang/Object;
.source "CommunityGroupGridCardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;",
        "Lffw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lffw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lfbv;

    invoke-direct {v0}, Lfbv;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0a0044

    .line 22
    check-cast p1, Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;

    check-cast p2, Lffw;

    iget-object v0, p0, Lfff;->a:Lffw;

    if-eq p2, v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lfff;->a:Lffw;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;->getCardView()Lfca;

    move-result-object v1

    iget-object v0, p2, Lffw;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    new-instance v2, Lffx;

    iget-object v3, p2, Lffw;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-direct {v2, v3}, Lffx;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    invoke-static {v1, v2}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;->getCardView()Lfca;

    move-result-object v2

    invoke-virtual {v2}, Lfca;->c()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getIcon()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Ld;->H(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0, v4}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v1}, Lfca;->c()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/image/view/AsyncImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v4}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    goto :goto_1
.end method
