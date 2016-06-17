.class public final Lffq;
.super Ljava/lang/Object;
.source "CommunityTopicFeedCardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;",
        "Lfgh;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lffq;->a:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 21
    check-cast p1, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;

    check-cast p2, Lfgh;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lfgh;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getPictures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p2}, Lfgh;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/wandoujia/p4/card/models/CardViewModel;->g()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getCardView()Lfca;

    move-result-object v2

    invoke-virtual {v2}, Lfca;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getCardView()Lfca;

    move-result-object v3

    invoke-virtual {v3}, Lfca;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lffr;

    invoke-direct {v4, p2, v2}, Lffr;-><init>(Lfgh;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getGridView()Lcom/wandoujia/p4/views/EmbeddedGridView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/wandoujia/p4/views/EmbeddedGridView;->setVisibility(I)V

    new-instance v2, Lfft;

    invoke-direct {v2}, Lfft;-><init>()V

    invoke-virtual {v2, v1}, Lfft;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getGridView()Lcom/wandoujia/p4/views/EmbeddedGridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/views/EmbeddedGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getLikeCountTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getLikesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getReplyCountTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getRepliesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getGroupNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getUpdatedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ld;->b(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lffs;->a:[I

    iget-object v2, p0, Lffq;->a:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getTimeTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->getGridView()Lcom/wandoujia/p4/views/EmbeddedGridView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/views/EmbeddedGridView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0232

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0233

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
