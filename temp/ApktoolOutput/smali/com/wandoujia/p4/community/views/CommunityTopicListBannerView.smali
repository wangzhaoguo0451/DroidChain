.class public Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;
.super Landroid/widget/FrameLayout;
.source "CommunityTopicListBannerView.java"


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;

.field private c:Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;)Lcom/wandoujia/phoenix2/av/view/PagePointsBox;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->c:Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f0c0269

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->a:Landroid/support/v4/view/ViewPager;

    .line 92
    const v0, 0x7f0c0267

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->b:Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;

    .line 93
    const v0, 0x7f0c00fa

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->c:Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    .line 94
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->d:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0c0268

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->f:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f0c01ac

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->e:Landroid/view/View;

    .line 97
    return-void
.end method

.method public setGroupModel(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 46
    new-instance v0, Lfoe;

    invoke-direct {v0, p1, v4}, Lfoe;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;B)V

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->b:Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getBanner()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    const v3, 0x7f0a0044

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgf;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfoa;

    invoke-direct {v1, p0}, Lfoa;-><init>(Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->c:Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->d:Landroid/widget/TextView;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e01df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->d:Landroid/widget/TextView;

    new-instance v1, Lfob;

    invoke-direct {v1, p0}, Lfob;-><init>(Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->e:Landroid/view/View;

    new-instance v1, Lfoc;

    invoke-direct {v1, p0}, Lfoc;-><init>(Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->f:Landroid/widget/ImageView;

    new-instance v1, Lfod;

    invoke-direct {v1, p0, p1}, Lfod;-><init>(Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
