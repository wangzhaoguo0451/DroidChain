.class Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$1;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    add-int v0, p3, p2

    if-ne v0, p4, :cond_0

    .line 176
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->lastTryFetch:I
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$000(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)I

    move-result v0

    if-ne p4, v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #setter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->lastTryFetch:I
    invoke-static {v0, p4}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$002(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;I)I

    .line 180
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->fetcher:Lcom/wandoujia/p4/pay/loader/Fetcher;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$100(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/loader/Fetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/loader/Fetcher;->fetchMore()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    return-void
.end method
