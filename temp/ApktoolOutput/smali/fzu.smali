.class public final Lfzu;
.super Ljava/lang/Object;
.source "NetCheckController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lfzu;->a:Ljava/util/List;

    iput-object p2, p0, Lfzu;->b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 418
    iget-object v0, p0, Lfzu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzw;

    .line 419
    iget-object v2, p0, Lfzu;->b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    sget-object v3, Lgag;->a:[I

    invoke-virtual {v2}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-virtual {v2}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v2, 0x7f0c02aa

    new-instance v3, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;

    invoke-direct {v3}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;-><init>()V

    invoke-virtual {v0, v2, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Lfzw;->a:Landroid/view/View;

    const v3, 0x7f0c0157

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    iget-object v0, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->e(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, v0, Lfzw;->a:Landroid/view/View;

    const v3, 0x7f0c0158

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    iget-object v0, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->e(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, v0, Lfzw;->a:Landroid/view/View;

    const v3, 0x7f0c0159

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    iget-object v0, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->e(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, v0, Lfzw;->a:Landroid/view/View;

    const v3, 0x7f0c015a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    iget-object v0, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->e(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, v0, Lfzw;->a:Landroid/view/View;

    const v3, 0x7f0c015b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    iget-object v0, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->e(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, v0, Lfzw;->a:Landroid/view/View;

    const v3, 0x7f0c015c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    iget-object v0, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->e(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, v0, Lfzw;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0, v4}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;I)V

    goto/16 :goto_0

    .line 421
    :cond_1
    return-void

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
