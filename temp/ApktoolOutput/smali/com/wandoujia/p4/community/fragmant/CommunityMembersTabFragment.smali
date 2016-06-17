.class public Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;
.super Lcom/wandoujia/p4/fragment/TabHostFragment;
.source "CommunityMembersTabFragment.java"


# instance fields
.field private a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "weekly"

    return-object v0
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
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-static {}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->values()[Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 89
    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->delegate:Lftq;
    invoke-static {v4}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->access$000(Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;)Lftq;

    move-result-object v5

    .line 90
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 91
    iget-object v7, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz v7, :cond_0

    .line 92
    const-string v7, "group_model"

    iget-object v8, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 93
    const-string v7, "group_id"

    iget-object v8, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v8}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 95
    :cond_0
    const-string v7, "scope"

    #getter for: Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->scope:Ljava/lang/String;
    invoke-static {v4}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->access$100(Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-object v6, v5, Lftq;->c:Landroid/os/Bundle;

    .line 97
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    const-string v1, "group_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 75
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getMembersCount()I

    move-result v0

    .line 81
    :goto_0
    const v2, 0x7f0e01f0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    return-void

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0
.end method
