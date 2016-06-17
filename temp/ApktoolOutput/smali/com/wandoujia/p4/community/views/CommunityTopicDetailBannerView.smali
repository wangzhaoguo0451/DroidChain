.class public Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;
.super Landroid/widget/RelativeLayout;
.source "CommunityTopicDetailBannerView.java"


# instance fields
.field private a:Lcom/wandoujia/p4/views/CircleAsyncImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/GridView;

.field private g:Landroid/widget/GridView;

.field private h:Lfny;

.field private i:Lfez;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

.field private volatile n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->n:Z

    .line 68
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;
    .locals 1
    .parameter

    .prologue
    .line 62
    const v0, 0x7f03009f

    invoke-static {p0, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->a:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/views/CircleAsyncImageView;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_2

    .line 145
    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->a:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f020009

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/p4/views/CircleAsyncImageView;->a(Ljava/lang/String;I)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getPictures()Ljava/util/List;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->f:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->h:Lfny;

    if-nez v1, :cond_5

    .line 155
    new-instance v1, Lfny;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfny;-><init>(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;B)V

    iput-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->h:Lfny;

    .line 156
    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->h:Lfny;

    invoke-virtual {v1, v0}, Lfny;->a(Ljava/util/List;)V

    .line 157
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->f:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->h:Lfny;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    :cond_5
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->n:Z

    if-nez v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->h:Lfny;

    invoke-virtual {v0}, Lfny;->notifyDataSetChanged()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->n:Z

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->i:Lfez;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->i:Lfez;

    invoke-virtual {v0}, Lfez;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->f:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->h:Lfny;

    .line 88
    invoke-direct {p0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->a()V

    .line 89
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 79
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/CircleAsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->a:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0259

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->c:Landroid/widget/TextView;

    const v0, 0x7f0c025a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->d:Landroid/widget/TextView;

    const v0, 0x7f0c025b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->f:Landroid/widget/GridView;

    const v0, 0x7f0c025e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->e:Landroid/widget/ImageView;

    const v0, 0x7f0c025f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->g:Landroid/widget/GridView;

    const v0, 0x7f0c025c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->j:Landroid/view/View;

    const v0, 0x7f0c0258

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->k:Landroid/widget/TextView;

    const v0, 0x7f0c0256

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->l:Landroid/view/View;

    .line 80
    return-void
.end method

.method public setLikedUser(Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x9

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 171
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getMetricsSize(Landroid/view/WindowManager;)I

    move-result v0

    const/16 v1, 0xf0

    if-gt v0, v1, :cond_2

    .line 179
    new-instance v0, Lfez;

    invoke-direct {v0, v2, p1}, Lfez;-><init>(ILcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->i:Lfez;

    .line 180
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->g:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->g:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->i:Lfez;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 182
    :cond_2
    new-instance v0, Lfez;

    invoke-direct {v0, v3, p1}, Lfez;-><init>(ILcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->i:Lfez;

    .line 183
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->g:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method public setTopicModel(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 71
    iput-object p1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->k:Landroid/widget/TextView;

    const v1, 0x7f0e0223

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->l:Landroid/view/View;

    const v1, 0x7f0c0257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e022c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->l:Landroid/view/View;

    new-instance v1, Lfnx;

    invoke-direct {v1, p0}, Lfnx;-><init>(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getCreatedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ld;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->m:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->a()V

    .line 74
    return-void

    .line 72
    :cond_2
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->k:Landroid/widget/TextView;

    const v1, 0x7f0e0224

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
