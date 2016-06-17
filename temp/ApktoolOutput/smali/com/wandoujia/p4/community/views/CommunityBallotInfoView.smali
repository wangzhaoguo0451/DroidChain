.class public Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;
.super Landroid/widget/RelativeLayout;
.source "CommunityBallotInfoView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/wandoujia/p4/button/views/StatefulButton;

.field public c:Lcom/wandoujia/image/view/AsyncImageView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/wandoujia/image/view/AsyncImageView;

.field public f:Landroid/widget/GridView;

.field public g:Lfez;

.field public h:I

.field public i:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->h:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->f:Landroid/widget/GridView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;Lfez;)Lfez;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->g:Lfez;

    return-object p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->h:I

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Lfez;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->g:Lfez;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->i:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f0c0285

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->a:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0c0293

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->b:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 62
    const v0, 0x7f0c028b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->c:Lcom/wandoujia/image/view/AsyncImageView;

    .line 63
    const v0, 0x7f0c028c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->d:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0c028f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->e:Lcom/wandoujia/image/view/AsyncImageView;

    .line 65
    const v0, 0x7f0c0292

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->f:Landroid/widget/GridView;

    .line 66
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->f:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lfnr;

    invoke-direct {v2, p0, v0}, Lfnr;-><init>(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    return-void
.end method
