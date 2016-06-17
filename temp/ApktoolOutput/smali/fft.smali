.class public final Lfft;
.super Leun;
.source "GridThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leun",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Leun;-><init>()V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 25
    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

    move-object v1, v0

    .line 31
    :goto_0
    invoke-virtual {p0, p1}, Lfft;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    sget-object v2, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->SMALL:Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    invoke-static {v0, v2}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a(Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a0044

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->a(Ljava/lang/String;I)V

    .line 34
    return-object p2

    .line 27
    :cond_0
    const v0, 0x7f0300ca

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 28
    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

    .line 29
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object p2, v1

    move-object v1, v0

    goto :goto_0
.end method
