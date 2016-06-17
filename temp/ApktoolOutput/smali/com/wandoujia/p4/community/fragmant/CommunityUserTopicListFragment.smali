.class public Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;
.super Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;
.source "CommunityUserTopicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment",
        "<",
        "Lfgh;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lflb;

.field private f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;-><init>()V

    .line 46
    sget-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->NEWEST:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    .line 182
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;)Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->g()V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lfsi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lfgh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->e:Lflb;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lflc;

    invoke-direct {v0}, Lflc;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->e:Lflb;

    .line 138
    :cond_0
    new-instance v0, Lfsw;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->e:Lflb;

    new-instance v2, Lfgl;

    invoke-direct {v2}, Lfgl;-><init>()V

    invoke-direct {v0, v1, v2}, Lfsw;-><init>(Lfsi;Lfza;)V

    return-object v0
.end method

.method protected final b()Leun;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<",
            "Lfgh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lfip;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfip;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;B)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lfio;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_TOPIC_FEED:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lfin;

    invoke-direct {v1, p0}, Lfin;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_PUBLISHED_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_REPLIED_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method protected final e()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->e()V

    .line 109
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->q()V

    .line 110
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 174
    const v0, 0x7f0300c8

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-string v1, "topics_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    .line 57
    :cond_0
    sget-object v0, Lfio;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 59
    :pswitch_0
    new-instance v0, Lflc;

    invoke-direct {v0}, Lflc;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->e:Lflb;

    goto :goto_0

    .line 62
    :pswitch_1
    new-instance v0, Lfkw;

    invoke-direct {v0}, Lfkw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->e:Lflb;

    goto :goto_0

    .line 65
    :pswitch_2
    new-instance v0, Lfky;

    invoke-direct {v0}, Lfky;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->e:Lflb;

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->e:Lflb;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->e:Lflb;

    invoke-virtual {v0}, Lflb;->b()V

    .line 104
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onDetach()V

    .line 94
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    sget-object v0, Lfio;->b:[I

    iget-object v1, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_0
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->q()V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    sget-object v2, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->NEWEST:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    sget-object v3, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->PUBLISHED:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0e020c

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    sget-object v3, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->REPLIED:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0e0215

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 72
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f0c02a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_0
    const v0, 0x7f0c00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->f:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    sget-object v2, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->NEWEST:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_1
    return-void
.end method
