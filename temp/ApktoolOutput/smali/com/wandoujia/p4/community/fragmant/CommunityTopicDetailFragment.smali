.class public Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;
.super Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;
.source "CommunityTopicDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment",
        "<",
        "Lfgd;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/View;

.field private f:Lcom/wandoujia/p4/button/views/StatefulButton;

.field private g:Lcom/wandoujia/p4/button/views/StatefulButton;

.field private h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

.field private i:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

.field private j:Lfhx;

.field private k:Lffl;

.field private l:Lfla;

.field private m:Lfkz;

.field private n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

.field private o:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Z

.field private final u:Lfdh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->q:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->r:Z

    .line 98
    iput-boolean v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->s:Z

    .line 99
    iput-boolean v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->t:Z

    .line 101
    new-instance v0, Lfdh;

    invoke-direct {v0, p0}, Lfdh;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->u:Lfdh;

    .line 427
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->i:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;Lffl;)Lffl;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->k:Lffl;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 358
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e01eb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 361
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_1

    const v0, 0x7f02025e

    :goto_1
    invoke-direct {v1, v3, v0, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x0

    const/16 v3, 0x21

    invoke-interface {v2, v1, v0, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 365
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->f:Lcom/wandoujia/p4/button/views/StatefulButton;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/button/views/StatefulButton;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void

    :cond_0
    move-object v0, v1

    .line 360
    goto :goto_0

    .line 361
    :cond_1
    const v0, 0x7f02025d

    goto :goto_1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->s:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->s:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    sget-object v1, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->LOADING:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->setState(Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;)V

    :cond_0
    new-instance v0, Lfhy;

    invoke-direct {v0, p0, v2}, Lfhy;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lffl;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->k:Lffl;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->q()V

    return-void
.end method

.method public static synthetic h(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->r:Z

    return v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lfhx;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->j:Lfhx;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lfkz;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->m:Lfkz;

    return-object v0
.end method

.method public static synthetic k(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    return-object v0
.end method

.method private q()V
    .locals 5

    .prologue
    const v4, 0x7f010043

    .line 348
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->i:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->setTopicModel(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V

    .line 352
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->f:Lcom/wandoujia/p4/button/views/StatefulButton;

    new-instance v1, Lfaq;

    const v2, 0x7f0e01ea

    new-instance v3, Lfhu;

    invoke-direct {v3, p0}, Lfhu;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    invoke-direct {v1, v4, v2, v3}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->g:Lcom/wandoujia/p4/button/views/StatefulButton;

    new-instance v1, Lfaq;

    const v2, 0x7f0e02f4

    new-instance v3, Lfhv;

    invoke-direct {v3, p0}, Lfhv;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    invoke-direct {v1, v4, v2, v3}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    .line 353
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isCurUserLiked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->a(Z)V

    .line 354
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-eqz v0, :cond_0

    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    :cond_2
    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v1, 0x7f0c0505

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanDelete()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0c0508

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanAddBlackUser()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0c0507

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanFeature()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isFeatured()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0e01d3

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v1, 0x7f0c0506

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanStick()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isSticky()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0e0234

    :goto_2
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    new-instance v1, Lfht;

    invoke-direct {v1, p0}, Lfht;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener$486aeec7(Lrw;)V

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f0e01d2

    goto :goto_1

    :cond_4
    const v1, 0x7f0e0230

    goto :goto_2
.end method


# virtual methods
.method protected final a()Lfsi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lfgd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->r:Z

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->m:Lfkz;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lfkz;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Lfkz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->m:Lfkz;

    .line 192
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->m:Lfkz;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->o:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getComment()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfkz;->a:Ljava/lang/String;

    .line 194
    :cond_0
    new-instance v0, Lfsw;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->m:Lfkz;

    new-instance v2, Lfgk;

    invoke-direct {v2}, Lfgk;-><init>()V

    invoke-direct {v0, v1, v2}, Lfsw;-><init>(Lfsi;Lfza;)V

    .line 200
    :goto_0
    return-object v0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->l:Lfla;

    if-nez v0, :cond_2

    .line 198
    new-instance v0, Lfla;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Lfla;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->l:Lfla;

    .line 200
    :cond_2
    new-instance v0, Lfsw;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->l:Lfla;

    new-instance v2, Lfgk;

    invoke-direct {v2}, Lfgk;-><init>()V

    invoke-direct {v0, v1, v2}, Lfsw;-><init>(Lfsi;Lfza;)V

    goto :goto_0
.end method

.method protected final a(IILfss;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<",
            "Lfgd;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->a(IILfss;)V

    .line 210
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->j:Lfhx;

    invoke-virtual {v0}, Lfhx;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    if-nez p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/views/ContentListView;->setSelection(I)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->j:Lfhx;

    iget-object v0, v0, Leun;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->j:Lfhx;

    invoke-virtual {v1}, Lfhx;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgd;

    .line 216
    if-eqz v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->m:Lfkz;

    iget-object v0, v0, Lfgd;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfkz;->a:Ljava/lang/String;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->j:Lfhx;

    iget-object v0, v0, Leun;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgd;

    .line 220
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, v0, Lfgd;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lfgd;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getSequence()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 222
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->a()V

    .line 225
    :cond_2
    return-void
.end method

.method protected final b()Leun;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<",
            "Lfgd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lfhx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhx;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;B)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->j:Lfhx;

    .line 258
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->j:Lfhx;

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b:Lcom/wandoujia/p4/views/FetchMoreFooterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->setVisibility(I)V

    .line 274
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300c3

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->e:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->e:Landroid/view/View;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    const v1, 0x7f0e01c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Leus;->a(Landroid/view/View;)V

    .line 279
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    new-instance v0, Lfhz;

    invoke-direct {v0, p0, v2}, Lfhz;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Leus;->c(Landroid/view/View;)Z

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->r:Z

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->a()V

    .line 291
    :cond_1
    iput-boolean v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->r:Z

    .line 292
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->j()V

    .line 294
    :cond_2
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->g()V

    .line 295
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 263
    const v0, 0x7f0300a0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onAttach(Landroid/app/Activity;)V

    .line 241
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    const-string v0, "topic_model"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 121
    const-string v0, "notification_model"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->o:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    .line 122
    const-string v0, "need_back_to_group"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->t:Z

    .line 123
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->p:Ljava/lang/String;

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 137
    :cond_1
    new-instance v0, Lfdd;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->u:Lfdh;

    invoke-direct {v0, v1, v2}, Lfdd;-><init>(Ljava/lang/String;Lfdh;)V

    invoke-virtual {v0}, Lfdd;->execute()V

    .line 138
    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->setHasOptionsMenu(Z)V

    .line 139
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->o:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    if-eqz v0, :cond_3

    .line 126
    iput-boolean v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->r:Z

    .line 127
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->o:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getTopicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->p:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_3
    const-string v0, "topic_model_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onDestroy()V

    .line 230
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->l:Lfla;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->l:Lfla;

    invoke-virtual {v0}, Lfla;->b()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->m:Lfkz;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->m:Lfkz;

    invoke-virtual {v0}, Lfkz;->b()V

    .line 236
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onDetach()V

    .line 247
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 249
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lfdz;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfdz;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lfdz;->execute()V

    .line 253
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 466
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    sget-object v0, Lfhw;->a:[I

    iget-object v1, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 472
    :pswitch_0
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->k:Lffl;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->k:Lffl;

    const-string v1, "GROUP_MEMBER"

    iget-object v2, v0, Lffl;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lffl;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lffl;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->setCurUserRole(Ljava/lang/String;)V

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    const-string v1, "GROUP_MEMBER"

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->setCurUserRole(Ljava/lang/String;)V

    .line 479
    :cond_3
    const-string v0, "reply"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Lfea;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-direct {v0, v1, v2}, Lfea;-><init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V

    invoke-virtual {v0}, Lfea;->execute()V

    goto :goto_0

    .line 486
    :pswitch_1
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->g()V

    goto :goto_0

    .line 492
    :pswitch_2
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 497
    :pswitch_3
    iget-object v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 498
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0e0218

    .line 501
    :goto_1
    iget-boolean v1, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v1, :cond_4

    .line 502
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->setCurUserLiked(Z)V

    .line 503
    iget-object v4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getLikesCount()I

    move-result v5

    if-eqz v3, :cond_6

    move v1, v2

    :goto_2
    add-int/2addr v1, v5

    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->setLikesCount(I)V

    .line 504
    new-instance v1, Lfdd;

    iget-object v4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->u:Lfdh;

    invoke-direct {v1, v4, v5}, Lfdd;-><init>(Ljava/lang/String;Lfdh;)V

    invoke-virtual {v1}, Lfdd;->execute()V

    .line 505
    invoke-direct {p0, v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->a(Z)V

    .line 507
    :cond_4
    if-eqz v3, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 498
    :cond_5
    const v0, 0x7f0e0217

    goto :goto_1

    .line 503
    :cond_6
    const/4 v1, -0x1

    goto :goto_2

    .line 512
    :pswitch_4
    const-string v0, "like"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 513
    new-instance v0, Lfdn;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-direct {v0, v1, v2}, Lfdn;-><init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V

    invoke-virtual {v0}, Lfdn;->execute()V

    goto/16 :goto_0

    .line 514
    :cond_7
    const-string v0, "reply"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Lfdi;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfdi;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lfdi;->execute()V

    goto/16 :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 144
    const v0, 0x7f0c0261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->f:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 145
    const v0, 0x7f0c0262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->g:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 146
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->a(Landroid/content/Context;)Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->i:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    .line 147
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->i:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    invoke-virtual {v0, v1}, Leus;->a(Landroid/view/View;)V

    .line 149
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->r:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->a(Landroid/content/Context;)Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    .line 151
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    new-instance v1, Lfhs;

    invoke-direct {v1, p0}, Lfhs;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    invoke-virtual {v0, v1}, Leus;->a(Landroid/view/View;)V

    .line 161
    :cond_0
    return-void
.end method

.method protected onPrepareLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onPrepareLoading()V

    .line 173
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->n:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->q()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Lfhz;

    invoke-direct {v0, p0, v1}, Lfhz;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 166
    const v0, 0x7f0e022d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method
