.class public final Lfrq;
.super Landroid/os/AsyncTask;
.source "FeedbackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackListActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lfrq;-><init>(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lfru;->a()Lfru;

    move-result-object v0

    invoke-virtual {v0}, Lfru;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-array v1, v5, [Lcom/wandoujia/p4/tips/TipsType;

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackListActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Lfrr;

    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lfrr;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    const v3, 0x7f0c0138

    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v2, v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackListActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->c(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-array v1, v5, [Lcom/wandoujia/p4/tips/TipsType;

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->NO_FEEDBACK:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->c(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->NO_FEEDBACK:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lfrq;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 126
    return-void
.end method
