.class public Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;
.super Lcom/wandoujia/p4/fragment/TabHostFragment;
.source "CommunityTopicListTabFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private d:Lcom/wandoujia/p4/button/views/StatefulButton;

.field private e:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

.field private f:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

.field private g:Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;

.field private h:Ljava/lang/String;

.field private i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

.field private j:Lfaq;

.field private k:Lfaq;

.field private l:Lfaq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;-><init>()V

    .line 279
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->e:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->toolbarContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getCurUserRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->d:Lcom/wandoujia/p4/button/views/StatefulButton;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->j:Lfaq;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v0, "anime"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getSubjectType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->d:Lcom/wandoujia/p4/button/views/StatefulButton;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->l:Lfaq;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->d:Lcom/wandoujia/p4/button/views/StatefulButton;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->k:Lfaq;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->toolbarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lfie;

    invoke-direct {v1, p0}, Lfie;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->toolbarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->toolbarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lfif;

    invoke-direct {v1, p0}, Lfif;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->toolbarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->f:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f010042

    .line 55
    new-instance v0, Lfaq;

    const v1, 0x7f0e0204

    new-instance v2, Lfed;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-direct {v2, v3, v4}, Lfed;-><init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    invoke-direct {v0, v5, v1, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->k:Lfaq;

    new-instance v0, Lfaq;

    const v1, 0x7f0e0207

    new-instance v2, Lfed;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-direct {v2, v3, v4}, Lfed;-><init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    invoke-direct {v0, v5, v1, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->l:Lfaq;

    new-instance v0, Lfaq;

    const v1, 0x7f0e01e3

    new-instance v2, Lfdi;

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lfdi;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v0, v5, v1, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->j:Lfaq;

    return-void
.end method

.method public static synthetic j(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->d()V

    return-void
.end method

.method public static synthetic k(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->g:Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;

    return-object v0
.end method

.method public static synthetic l(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->toolbarContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static synthetic m(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->toolbarContainer:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f0300c9

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-static {}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->values()[Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 214
    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->delegate:Lftq;
    invoke-static {v4}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->access$800(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;)Lftq;

    move-result-object v5

    .line 215
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v7, "group_id"

    iget-object v8, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->h:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v7, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->NORMAL:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    if-ne v4, v7, :cond_1

    .line 218
    const-string v4, "scope"

    const-string v7, "normal"

    invoke-virtual {v6, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_1
    iput-object v6, v5, Lftq;->c:Landroid/os/Bundle;

    .line 223
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    sget-object v7, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->FEATURED:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    if-ne v4, v7, :cond_0

    .line 220
    const-string v4, "scope"

    const-string v7, "feature"

    invoke-virtual {v6, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_2
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    new-instance v1, Lfic;

    invoke-direct {v1, p0}, Lfic;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener$486aeec7(Lrw;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lfid;

    invoke-direct {v1, p0}, Lfid;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 182
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->e:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setEnable(Z)V

    .line 183
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->e:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    new-instance v1, Lgxy;

    invoke-direct {v1, p0}, Lgxy;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setOnScrollChangedListener(Lgxy;)V

    .line 206
    new-instance v0, Lfii;

    invoke-direct {v0, p0, v2}, Lfii;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;B)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 207
    new-instance v0, Lfih;

    invoke-direct {v0, p0, v2}, Lfih;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onAttach(Landroid/app/Activity;)V

    .line 109
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->h:Ljava/lang/String;

    .line 104
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 122
    const v0, 0x7f0c021e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->a:Landroid/view/View;

    .line 123
    const v0, 0x7f0c0266

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->f:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    .line 124
    const v0, 0x7f0c0002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->d:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 125
    const v0, 0x7f0c0108

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->e:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    .line 126
    const v0, 0x7f0c0296

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->g:Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;

    .line 127
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->g:Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;->setVisibility(I)V

    .line 128
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onDetach()V

    .line 115
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-nez v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    sget-object v0, Lfig;->a:[I

    iget-object v1, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    const-string v1, "GROUP_MEMBER"

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->setCurUserRole(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->d()V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->setCurUserRole(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->d()V

    goto :goto_0

    .line 362
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getCurUserRole()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lfdi;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfdi;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lfdi;->execute()V

    goto :goto_0

    .line 367
    :pswitch_3
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->c:Ljava/lang/Object;

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->toolbarContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 135
    return-void
.end method
