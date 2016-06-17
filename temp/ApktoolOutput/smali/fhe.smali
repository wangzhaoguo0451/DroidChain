.class public final Lfhe;
.super Ljava/lang/Object;
.source "CommunityNewBallotFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lfhe;->b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    iput-object p2, p0, Lfhe;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lfhe;->b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lfhe;->a:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    packed-switch p3, :pswitch_data_0

    .line 161
    :goto_0
    iget-object v0, p0, Lfhe;->b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhe;->b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lfhe;->b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a()V

    .line 164
    :cond_0
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Lfhe;->b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    const-string v1, "game"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lfhe;->b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    const-string v1, "tv"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lfhe;->b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    const-string v1, "anime"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lfhe;->b:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    const-string v1, "other"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
