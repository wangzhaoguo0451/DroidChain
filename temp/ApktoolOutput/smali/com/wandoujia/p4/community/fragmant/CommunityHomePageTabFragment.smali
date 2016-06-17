.class public Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;
.super Lcom/wandoujia/p4/fragment/TabHostFragment;
.source "CommunityHomePageTabFragment.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;-><init>()V

    .line 31
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0301e1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "topic_feed"

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 10
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
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->a:Ljava/util/List;

    .line 126
    invoke-static {}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->values()[Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 127
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->needLogin:Z
    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->access$100(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 132
    sget-object v0, Lfha;->a:[I

    invoke-virtual {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 157
    :goto_1
    iput-object v6, v0, Lftq;->c:Landroid/os/Bundle;

    .line 158
    iget-object v5, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 134
    :pswitch_0
    new-instance v0, Lftq;

    new-instance v7, Lfnt;

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabId:Ljava/lang/String;
    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->access$200(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->access$300(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Lfnt;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-class v5, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;

    invoke-direct {v0, v7, v5, v1}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 136
    const-string v5, "topics_type"

    sget-object v7, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->NEWEST:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    .line 140
    :pswitch_1
    new-instance v0, Lftq;

    new-instance v7, Lfnt;

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabId:Ljava/lang/String;
    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->access$200(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->access$300(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Lfnt;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-class v5, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;

    invoke-direct {v0, v7, v5, v1}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 142
    const-string v5, "filter_joined_groups"

    invoke-virtual {v6, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 145
    :pswitch_2
    const-string v0, "force_close_toolbar"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    new-instance v0, Lftq;

    new-instance v7, Lfnt;

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabId:Ljava/lang/String;
    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->access$200(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->access$300(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Lfnt;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-class v5, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;

    invoke-direct {v0, v7, v5, v1}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 151
    :pswitch_3
    const-string v0, "force_close_toolbar"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    new-instance v0, Lftq;

    new-instance v7, Lfnv;

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabId:Ljava/lang/String;
    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->access$200(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->access$300(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Lfnv;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-class v5, Lcom/wandoujia/p4/community/fragmant/CommunityNotificationListFragment;

    invoke-direct {v0, v7, v5, v1}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->a:Ljava/util/List;

    return-object v0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onAttach(Landroid/app/Activity;)V

    .line 104
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Lfgz;

    invoke-direct {v0, p0}, Lfgz;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->c:Lhw;

    .line 93
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onDetach()V

    .line 110
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    sget-object v0, Lfha;->b:[I

    iget-object v1, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    iget-object v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->b(Ljava/util/List;)V

    .line 176
    const-string v0, "message"

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 177
    const-string v0, "my_group"

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0e0238

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method
