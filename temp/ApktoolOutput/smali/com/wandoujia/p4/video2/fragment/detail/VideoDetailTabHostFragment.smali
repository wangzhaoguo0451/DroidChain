.class public Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;
.super Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;
.source "VideoDetailTabHostFragment.java"


# instance fields
.field private A:Landroid/view/View;

.field private B:Lgjb;

.field private C:Lgjd;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

.field private F:Lfaq;

.field private final G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lgje;",
            ">;>;"
        }
    .end annotation
.end field

.field private final H:Lggc;

.field private final I:Lggh;

.field private J:Lhw;

.field public d:J

.field public e:Lcom/wandoujia/p4/video/model/VideoType;

.field public f:Lcom/wandoujia/p4/video/model/VideoSubType;

.field public g:Lghq;

.field public h:Lghr;

.field public i:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

.field public l:Lfsr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsr",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

.field private o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

.field private p:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

.field private q:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

.field private r:Landroid/view/View;

.field private s:Lcom/nineoldandroids/view/ViewPropertyAnimator;

.field private t:Z

.field private u:I

.field private v:Lcom/wandoujia/mvc/BaseView;

.field private w:Lggi;

.field private x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

.field private y:Landroid/view/ViewGroup;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->t:Z

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->j:Ljava/util/Map;

    .line 130
    sget-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->G:Ljava/util/Set;

    .line 138
    new-instance v0, Lggc;

    invoke-direct {v0, p0}, Lggc;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->H:Lggc;

    .line 157
    new-instance v0, Lgis;

    invoke-direct {v0, p0}, Lgis;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->I:Lggh;

    .line 181
    new-instance v0, Lgit;

    invoke-direct {v0, p0}, Lgit;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->l:Lfsr;

    .line 201
    new-instance v0, Lgiv;

    invoke-direct {v0, p0}, Lgiv;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->J:Lhw;

    .line 1174
    return-void
.end method

.method private static a(III)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1169
    sub-int v0, p2, p0

    .line 1170
    new-instance v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    const-string v2, "%d - %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sub-int v5, p0, p1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method public static a(JLcom/wandoujia/p4/video/model/VideoType;Lcom/wandoujia/p4/video/model/VideoSubType;Ljava/lang/String;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;-><init>()V

    .line 227
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 228
    const-string v2, "video_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 229
    const-string v2, "session_id"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz p2, :cond_0

    .line 231
    const-string v2, "video_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 233
    :cond_0
    const-string v2, "sub_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 235
    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->p:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lggi;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->w:Lggi;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/model/VideoDetailModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1110
    if-eqz v0, :cond_0

    .line 1111
    new-instance v3, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    invoke-direct {v3, v4, v4, v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1115
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1116
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    const-string v2, "empty_key"

    invoke-direct {v0, v4, v4, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_2
    return-object v1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f010042

    const/4 v4, 0x0

    .line 97
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->m()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->z:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/view/OperationBar;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/app/detail/view/OperationBar;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    new-instance v0, Lfaq;

    const v1, 0x7f0e01c2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lfaq;-><init>(ILcom/wandoujia/mvc/Action;Z)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->F:Lfaq;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->currentGroupBalloting()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->isCurUserBalloted()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lfaq;

    const v1, 0x7f0e01c1

    new-instance v2, Lgio;

    invoke-direct {v2, p0, p1}, Lgio;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    invoke-direct {v0, v5, v1, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    :goto_0
    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    invoke-virtual {v1}, Lcom/wandoujia/p4/app/detail/view/OperationBar;->getMainButton()Lfar;

    move-result-object v1

    invoke-interface {v1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/app/detail/view/OperationBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->A:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->F:Lfaq;

    goto :goto_0

    :cond_2
    const-string v0, "anime"

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getSubjectType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0e0207

    :goto_1
    new-instance v1, Lfaq;

    new-instance v2, Lfed;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lfed;-><init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    invoke-direct {v1, v5, v0, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const v0, 0x7f0e0204

    goto :goto_1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video/model/VideoType;Lcom/wandoujia/p4/video/model/VideoSubType;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    iput-object p2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    sget-object v0, Lcom/wandoujia/p4/video/model/VideoSubType;->ANIME:Lcom/wandoujia/p4/video/model/VideoSubType;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f009b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    new-instance v0, Lgin;

    invoke-direct {v0, p0}, Lgin;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->i()V

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->h()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->i:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->j:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->G:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->G:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgje;

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgje;

    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Lgiq;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lgiq;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lgje;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/model/VideoDetailModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    iput-object p3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->p:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    iput-object p1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    iput-object p2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    iput-object p4, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->q:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    sget-object v0, Lgir;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    sget-object v0, Lgir;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    invoke-static {p1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->b(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->D:Ljava/util/List;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->j:Ljava/util/Map;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e0618

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v2

    invoke-static {v1, v2}, Ld;->a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Ldxa;->a:I

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lgir;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    new-instance v0, Lghq;

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    invoke-direct {v0, v2, v3}, Lghq;-><init>(J)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g:Lghq;

    :goto_3
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->I:Lggh;

    invoke-static {v0}, Ld;->a(Lggh;)V

    invoke-static {}, Lgfz;->a()Lgfz;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->H:Lggc;

    invoke-virtual {v0, v1}, Lgfz;->a(Lggc;)V

    sget-object v0, Lgir;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->m()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "anime_detail_model"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ANIME_DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->j()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v3, "episode_tab_type"

    sget-object v4, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "episode_section_key_list"

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->D:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v3, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v3, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v3, "episode_tab_type"

    sget-object v4, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->DOWNLOAD:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "episode_section_key_list"

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->D:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3
    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->commentsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->COMMENTS:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->l()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->RECOMMEND:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->getTabId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_6
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoType;->COMIC:Lcom/wandoujia/p4/video/model/VideoType;

    if-ne v0, v1, :cond_d

    const-string v0, "anime"

    :goto_7
    new-instance v1, Lfei;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lgip;

    invoke-direct {v3, p0}, Lgip;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    invoke-direct {v1, v2, v0, v3}, Lfei;-><init>(Ljava/lang/String;Ljava/lang/String;Lfek;)V

    invoke-virtual {v1}, Lfei;->execute()V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->v:Lcom/wandoujia/mvc/BaseView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->y:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->v:Lcom/wandoujia/mvc/BaseView;

    invoke-interface {v1}, Lcom/wandoujia/mvc/BaseView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    sget-object v0, Lgir;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->y:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->v:Lcom/wandoujia/mvc/BaseView;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->v:Lcom/wandoujia/mvc/BaseView;

    check-cast v0, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/view/VideoDetailHeaderView;->setData(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V

    :goto_8
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->y:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->v:Lcom/wandoujia/mvc/BaseView;

    invoke-interface {v1}, Lcom/wandoujia/mvc/BaseView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->A:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->j()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_9
    return-void

    :pswitch_2
    new-instance v0, Lghr;

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    invoke-direct {v0, v2, v3}, Lghr;-><init>(J)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->h:Lghr;

    goto/16 :goto_3

    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->m()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->l()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "anime_detail_model"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ANIME_DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->commentsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->COMMENTS:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->l()Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->RECOMMEND:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->b(Ljava/util/List;)V

    sget-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->getTabId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_a
    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_c
    sget-object v2, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    goto/16 :goto_5

    :cond_d
    const-string v0, "tv"

    goto/16 :goto_7

    :pswitch_4
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->y:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->a(Landroid/view/ViewGroup;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->v:Lcom/wandoujia/mvc/BaseView;

    goto/16 :goto_8

    :cond_e
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->z:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->A:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lggi;

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lggi;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Z)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->w:Lggi;

    iget-object v6, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->w:Lggi;

    iget-object v7, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    new-instance v0, Lggn;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    iget-object v4, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->p:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->q:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-direct/range {v0 .. v5}, Lggn;-><init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    invoke-virtual {v6, v7, v0}, Lggi;->a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    goto/16 :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lgja;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lgja;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/app/detail/view/OperationBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    return-object v0
.end method

.method private static b(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/model/VideoDetailModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x32

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeNum:I

    .line 1127
    if-gt v2, v4, :cond_1

    .line 1129
    invoke-static {v2, v2, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(III)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_0
    return-object v0

    .line 1133
    :cond_1
    rem-int/lit8 v1, v2, 0x32

    .line 1135
    if-eqz v1, :cond_2

    .line 1136
    invoke-static {v2, v1, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(III)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_2
    sub-int v1, v2, v1

    .line 1139
    :goto_0
    if-lez v1, :cond_0

    .line 1141
    invoke-static {v1, v4, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(III)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    add-int/lit8 v1, v1, -0x32

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->p:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->q:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->i:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->C:Lgjd;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->C:Lgjd;

    invoke-static {v0}, Ld;->a(Landroid/os/AsyncTask;)V

    .line 519
    :cond_0
    new-instance v0, Lgjd;

    invoke-direct {v0, p0, v1}, Lgjd;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;B)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->C:Lgjd;

    .line 520
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->C:Lgjd;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 521
    return-void
.end method

.method public static synthetic h(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->s:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 524
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->B:Lgjb;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->B:Lgjb;

    invoke-static {v0}, Ld;->a(Landroid/os/AsyncTask;)V

    .line 527
    :cond_0
    new-instance v0, Lgjb;

    invoke-direct {v0, p0, v1}, Lgjb;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;B)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->B:Lgjb;

    .line 528
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->B:Lgjb;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.method public static synthetic i(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->toolbarContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 553
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wdj://videos/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static synthetic j(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->toolbarContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 614
    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    sget-object v2, Lcom/wandoujia/p4/video/model/VideoType;->VARIETY:Lcom/wandoujia/p4/video/model/VideoType;

    if-ne v1, v2, :cond_1

    .line 615
    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->sectionKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayInfos:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    return-wide v0
.end method

.method private k()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 623
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 645
    :goto_0
    return v0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    sget-object v2, Lcom/wandoujia/p4/video/model/VideoType;->VARIETY:Lcom/wandoujia/p4/video/model/VideoType;

    if-ne v0, v2, :cond_1

    .line 627
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 628
    goto :goto_0

    .line 631
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 632
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 633
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->providerNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 634
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v5

    .line 636
    if-eqz v5, :cond_2

    .line 637
    invoke-virtual {v5}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isUseCommonDownloadUrls()Z

    move-result v5

    if-nez v5, :cond_3

    .line 638
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 640
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noDownloadUrls:Z

    if-nez v0, :cond_5

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPrivateDownloadUrls:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayExpDownloadUrls:Z

    if-nez v0, :cond_7

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic l(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->q:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    return-object v0
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoSubType;->ANIME:Lcom/wandoujia/p4/video/model/VideoSubType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    instance-of v0, v0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 898
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 899
    const-string v1, "video_meta_model"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 900
    const-string v1, "video_type"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 901
    const-string v1, "video_play_record_model"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 902
    const-string v1, "sub_type"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 903
    return-object v0
.end method

.method public static synthetic m(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g()V

    return-void
.end method

.method public static synthetic n(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video/model/VideoType;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    return-object v0
.end method

.method public static synthetic o(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic p(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video/model/VideoSubType;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    return-object v0
.end method

.method public static synthetic q(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->h()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 241
    const v0, 0x7f0301e2

    return v0
.end method

.method protected final a(F)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x78

    .line 395
    invoke-super {p0, p1}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->a(F)V

    .line 396
    cmpl-float v0, p1, v4

    if-nez v0, :cond_2

    .line 397
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->t:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->t:Z

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->s:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->s:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->toolbarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->toolbarContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lgiw;

    invoke-direct {v1, p0}, Lgiw;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->s:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->r:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->t:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->t:Z

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->s:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->s:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->toolbarContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->u:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lgix;

    invoke-direct {v1, p0}, Lgix;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->s:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->r:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->u:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 390
    iget v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->u:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->a(I)V

    .line 391
    return-void
.end method

.method public final a(Lgja;)V
    .locals 2
    .parameter

    .prologue
    .line 450
    new-instance v0, Lgiy;

    invoke-direct {v0, p0, p1}, Lgiy;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lgja;)V

    .line 471
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 472
    return-void
.end method

.method public final a(Lgje;)V
    .locals 3
    .parameter

    .prologue
    .line 907
    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->G:Ljava/util/Set;

    monitor-enter v1

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->G:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 909
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgje;

    .line 910
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    monitor-exit v1

    .line 916
    :goto_0
    return-void

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->G:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 916
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->getTabId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
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
    .line 430
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 406
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g()V

    .line 425
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->i()V

    .line 412
    sget-object v0, Lgir;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 422
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->h()V

    goto :goto_0

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    if-nez v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g()V

    goto :goto_0

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->h()V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 272
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->y:Landroid/view/ViewGroup;

    .line 274
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->z:Landroid/widget/FrameLayout;

    .line 275
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const v1, 0x7f0c0444

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->A:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const v1, 0x7f0c0106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->r:Landroid/view/View;

    .line 278
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->u:I

    .line 279
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->J:Lhw;

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->c:Lhw;

    .line 280
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->toolbarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->t:Z

    .line 282
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->toolbarContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->u:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 283
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->toolbarContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->r:Landroid/view/View;

    iget v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->u:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 286
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    .line 249
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->m:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/VideoType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    .line 251
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sub_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/VideoSubType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 253
    :cond_0
    if-eqz p1, :cond_4

    .line 254
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 255
    const-string v0, "video_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 258
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->m:Ljava/lang/String;

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    if-nez v0, :cond_3

    .line 261
    const-string v0, "video_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/VideoType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    if-nez v0, :cond_4

    .line 264
    const-string v0, "sub_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/VideoSubType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 267
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g:Lghq;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g:Lghq;

    invoke-virtual {v0}, Lghq;->b()V

    .line 439
    :cond_0
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 445
    invoke-super {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->onDestroy()V

    .line 446
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 811
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    sget-object v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->E:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/view/OperationBar;->getMainButton()Lfar;

    move-result-object v0

    invoke-interface {v0}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->F:Lfaq;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    .line 814
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 301
    const-string v0, "video_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 302
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "video_type"

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 304
    const-string v0, "sub_type"

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 305
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    .line 290
    invoke-super {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->onStart()V

    .line 291
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->w:Lggi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    if-eqz v0, :cond_0

    .line 292
    iget-object v6, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->w:Lggi;

    iget-object v7, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->x:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    new-instance v0, Lggn;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    iget-object v4, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->p:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->q:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-direct/range {v0 .. v5}, Lggn;-><init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    invoke-virtual {v6, v7, v0}, Lggi;->a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    .line 296
    :cond_0
    return-void
.end method
