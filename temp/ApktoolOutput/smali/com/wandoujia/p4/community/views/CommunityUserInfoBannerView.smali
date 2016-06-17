.class public Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;
.super Landroid/widget/LinearLayout;
.source "CommunityUserInfoBannerView.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;
    .locals 1
    .parameter

    .prologue
    .line 44
    const v0, 0x7f0301cc

    invoke-static {p0, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->c:Landroid/view/View;

    const v1, 0x7f0c00de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    .line 103
    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020009

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 104
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->c:Landroid/view/View;

    const v1, 0x7f0c029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string v0, ""

    move-object v1, v0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->c:Landroid/view/View;

    const v2, 0x7f0c041f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->c:Landroid/view/View;

    new-instance v1, Lfoj;

    invoke-direct {v1, p0}, Lfoj;-><init>(Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 51
    const v0, 0x7f0c0423

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->a:Landroid/view/View;

    .line 52
    const v0, 0x7f0c0420

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->b:Landroid/view/View;

    .line 53
    const v0, 0x7f0c041d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->c:Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->a()V

    .line 55
    return-void
.end method
