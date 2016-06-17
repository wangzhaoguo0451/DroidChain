.class public final Lfch;
.super Ljava/lang/Object;
.source "PullToRefreshAsyncloadFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->a(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->b(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->c(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 146
    :goto_1
    return v0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->b(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;I)I

    .line 106
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b()V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v2, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->e(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)I

    move-result v2

    if-nez v2, :cond_1

    .line 110
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->b(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;I)I

    .line 111
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->e(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 115
    int-to-float v2, v2

    const/high16 v3, 0x3e80

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 116
    if-lez v2, :cond_3

    .line 117
    iget-object v3, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b()V

    .line 118
    iget-object v3, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a(I)V

    .line 119
    invoke-static {}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->f()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 120
    iget-object v2, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->PULLING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a(Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;)V

    .line 122
    iget-object v2, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v2, v1}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->b(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;Z)Z

    goto :goto_1

    .line 124
    :cond_2
    iget-object v1, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->RELEASE:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a(Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;)V

    .line 126
    iget-object v1, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->b(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;Z)Z

    goto :goto_1

    .line 130
    :cond_3
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a()V

    move v0, v1

    .line 131
    goto/16 :goto_1

    .line 136
    :pswitch_2
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->b(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;I)I

    .line 137
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->a(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;Z)Z

    .line 138
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->f(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->e()V

    goto/16 :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lfch;->a:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a()V

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
