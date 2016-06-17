.class public Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "AnimeDetailDescriptionFragment.java"


# instance fields
.field private a:Lcom/wandoujia/p4/views/FlowLayout;

.field private b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/wandoujia/p4/views/ExpandablePanel;

.field private i:Lcom/wandoujia/phoenix2/av/view/PairTextContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 196
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 154
    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 178
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->videoCategories:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->videoCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->videoCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoCategory;

    .line 181
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v2

    .line 185
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->a:Lcom/wandoujia/p4/views/FlowLayout;

    const v3, 0x7f030245

    invoke-static {v0, v3}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->a:Lcom/wandoujia/p4/views/FlowLayout;

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/views/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->a:Lcom/wandoujia/p4/views/FlowLayout;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->setVisibility(I)V

    .line 194
    :cond_2
    return-void
.end method


# virtual methods
.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "anime_detail_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const v0, 0x7f030089

    invoke-static {p2, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f0c0198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->c:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0c019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->d:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0c0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ExpandablePanel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->h:Lcom/wandoujia/p4/views/ExpandablePanel;

    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->h:Lcom/wandoujia/p4/views/ExpandablePanel;

    new-instance v1, Lgfr;

    invoke-direct {v1, p0}, Lgfr;-><init>(Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ExpandablePanel;->setExpandStateListener(Lgqb;)V

    .line 89
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->h:Lcom/wandoujia/p4/views/ExpandablePanel;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ExpandablePanel;->setCollapseHeight(I)V

    .line 91
    const v0, 0x7f0c01a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/FlowLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->a:Lcom/wandoujia/p4/views/FlowLayout;

    .line 92
    const v0, 0x7f0c01a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->g:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0c0236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->e:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0c0237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->f:Landroid/widget/LinearLayout;

    .line 95
    const v0, 0x7f0c01a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->i:Lcom/wandoujia/phoenix2/av/view/PairTextContainer;

    .line 96
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->originals:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->originals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;

    sget-object v2, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->ORIGINAL:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iget-object v3, v3, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->originals:Ljava/util/List;

    invoke-static {v3}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;-><init>(Lcom/wandoujia/p4/video2/anime/AnimePersonType;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->supervisors:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->supervisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;

    sget-object v2, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->SUPERVISOR:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iget-object v3, v3, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->supervisors:Ljava/util/List;

    invoke-static {v3}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;-><init>(Lcom/wandoujia/p4/video2/anime/AnimePersonType;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->musicSupervisions:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->musicSupervisions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;

    sget-object v2, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->MUSIC_SUPERVISIONS:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    iget-object v3, v3, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->musicSupervisions:Ljava/util/List;

    invoke-static {v3}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;-><init>(Lcom/wandoujia/p4/video2/anime/AnimePersonType;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->seiyuus:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->seiyuus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;

    sget-object v2, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->SEIYU:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->seiyuus:Ljava/util/List;

    invoke-static {v3}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;-><init>(Lcom/wandoujia/p4/video2/anime/AnimePersonType;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->updateFrequency:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e0653

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->updateFrequency:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e063a

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-static {v3}, Ld;->a(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e0639

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-static {v3}, Ld;->b(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e0381

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->b:Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;

    invoke-static {v3}, Ld;->c(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->i:Lcom/wandoujia/phoenix2/av/view/PairTextContainer;

    invoke-virtual {v1, v0}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->setData(Ljava/util/List;)V

    .line 97
    :cond_6
    return-void

    .line 96
    :cond_7
    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->f:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;

    move-result-object v2

    iget-object v3, v0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;->personType:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment$AnimePersonNamesSingleLineModel;->names:Ljava/util/List;

    invoke-virtual {v2, v3, v0}, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->a(Lcom/wandoujia/p4/video2/anime/AnimePersonType;Ljava/util/List;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
