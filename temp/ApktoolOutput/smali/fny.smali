.class public final Lfny;
.super Leun;
.source "CommunityTopicDetailBannerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leun",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lfny;->b:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    invoke-direct {p0}, Leun;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lfny;-><init>(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0c027f

    .line 193
    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

    move-object v1, v0

    .line 202
    :goto_0
    invoke-virtual {p0, p1}, Lfny;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    sget-object v2, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->MIDDLE:Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    invoke-static {v0, v2}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a(Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a0044

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->a(Ljava/lang/String;I)V

    .line 204
    new-instance v0, Lfnz;

    invoke-direct {v0, p0, p1}, Lfnz;-><init>(Lfny;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    return-object p2

    .line 196
    :cond_0
    const v0, 0x7f0300c7

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 197
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

    .line 198
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    iget-object v1, p0, Lfny;->b:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->b(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-static {v1}, Ld;->a(Landroid/widget/GridView;)I

    move-result v1

    .line 200
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v0

    goto :goto_0
.end method
