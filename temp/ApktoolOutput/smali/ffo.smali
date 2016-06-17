.class public final Lffo;
.super Ljava/lang/Object;
.source "CommunityTopicCardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;",
        "Lfgf;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lffo;->a:Z

    .line 28
    iput-boolean p1, p0, Lffo;->a:Z

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 22
    check-cast p1, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;

    check-cast p2, Lfgf;

    iget-object v4, p2, Lfgf;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getPictures()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getCardView()Lfca;

    move-result-object v5

    invoke-virtual {v5}, Lfca;->c()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v5

    invoke-virtual {p2}, Lfgf;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/wandoujia/p4/card/models/CardViewModel;->c()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0201e7

    invoke-virtual {v5, v6, v7}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getCardView()Lfca;

    move-result-object v5

    invoke-virtual {v5}, Lfca;->a()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p2}, Lfgf;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/wandoujia/p4/card/models/CardViewModel;->g()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getCardView()Lfca;

    move-result-object v5

    invoke-virtual {v5}, Lfca;->b()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p2}, Lfgf;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/wandoujia/p4/card/models/CardViewModel;->a()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getCardView()Lfca;

    move-result-object v5

    invoke-virtual {v5}, Lfca;->g()Lcom/wandoujia/p4/button/views/SubActionButton;

    move-result-object v5

    invoke-virtual {p2}, Lfgf;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/wandoujia/p4/card/models/CardViewModel;->d()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    invoke-virtual {v5, v3}, Lcom/wandoujia/p4/button/views/SubActionButton;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getCardView()Lfca;

    move-result-object v5

    invoke-virtual {v5}, Lfca;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getCardView()Lfca;

    move-result-object v6

    invoke-virtual {v6}, Lfca;->getView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lffp;

    invoke-direct {v7, p2, v5}, Lffp;-><init>(Lfgf;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getGridView()Lcom/wandoujia/p4/views/EmbeddedGridView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/wandoujia/p4/views/EmbeddedGridView;->setVisibility(I)V

    new-instance v5, Lfft;

    invoke-direct {v5}, Lfft;-><init>()V

    invoke-virtual {v5, v0}, Lfft;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getGridView()Lcom/wandoujia/p4/views/EmbeddedGridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/wandoujia/p4/views/EmbeddedGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v0, p2, Lfgf;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isFeatured()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lfgf;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_2
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getTagTextView()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0e01d1

    iget-boolean v5, p0, Lffo;->a:Z

    if-nez v5, :cond_2

    iget-object v5, p2, Lfgf;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v5}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isSticky()Z

    move-result v5

    if-eqz v5, :cond_2

    const v0, 0x7f0e0230

    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getTagTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getLikeCountTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getLikesCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getReplyCountTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getRepliesCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getTimeTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getUpdatedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ld;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lfgf;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->isAdmin()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0223

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {v0}, Lfca;->g()Lcom/wandoujia/p4/button/views/SubActionButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/button/views/SubActionButton;->setAlwaysShowAsAction(Z)V

    return-void

    :cond_3
    invoke-virtual {v5, v1}, Lcom/wandoujia/p4/button/views/SubActionButton;->setVisibility(I)V

    invoke-virtual {v5, v2}, Lcom/wandoujia/p4/button/views/SubActionButton;->setAlwaysShowAsAction(Z)V

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/button/views/SubActionButton;->setData(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getGridView()Lcom/wandoujia/p4/views/EmbeddedGridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/views/EmbeddedGridView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_2

    :cond_6
    move v0, v3

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0224

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
