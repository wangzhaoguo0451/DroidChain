.class public final Lfhc;
.super Ljava/lang/Object;
.source "CommunityNewBallotFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lfhc;->a:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 112
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfhc;->a:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    const-string v1, "max_count"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v1, "default_tab_pos"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lfhc;->a:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-virtual {v1, v0, v3}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    return-void
.end method
