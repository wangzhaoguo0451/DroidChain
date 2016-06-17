.class public Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;
.super Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;
.source "CommunityAllMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment",
        "<",
        "Lffy;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;-><init>()V

    .line 116
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->e:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    return-object v0
.end method


# virtual methods
.method protected final a()Lfsi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lffy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lfsw;

    new-instance v1, Lfkt;

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->e:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-direct {v1, v2}, Lfkt;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    new-instance v2, Lfgq;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lfgq;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;B)V

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
            "Lffy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lfgp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfgp;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;B)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const v1, 0x7f0e01f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :cond_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f0300f6

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    const-string v1, "group_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->e:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 47
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onDestroy()V

    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->i()Lfst;

    move-result-object v0

    iget-object v0, v0, Lfst;->b:Lfsi;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lfsi;->b()V

    .line 90
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onDetach()V

    .line 63
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-object v0, Lfgo;->a:[I

    iget-object v1, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->e:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->setCurUserRole(Ljava/lang/String;)V

    .line 141
    :pswitch_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->g()V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    return-void
.end method
