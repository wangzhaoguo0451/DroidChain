.class public Lcom/wandoujia/p4/feedback/FeedbackListActivity;
.super Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;
.source "FeedbackListActivity.java"


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lfrq;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;-><init>()V

    .line 99
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackListActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->c:Landroid/widget/ListView;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->d:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected final c()V
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->findViewById(I)Landroid/view/View;

    .line 74
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a:Landroid/support/v7/widget/Toolbar;

    .line 75
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->findViewById(I)Landroid/view/View;

    .line 76
    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->b:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0e02d5

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 83
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020252

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#24aa42"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lfrp;

    invoke-direct {v1, p0}, Lfrp;-><init>(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 49
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->c()V

    .line 53
    const v0, 0x7f0c0135

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 54
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 55
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->f:Landroid/widget/LinearLayout;

    .line 57
    iget-object v1, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->f:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const v0, 0x7f0c0136

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 61
    new-instance v1, Lfro;

    invoke-direct {v1, p0}, Lfro;-><init>(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->onBackPressed()V

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-super {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->c:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 146
    :cond_0
    invoke-static {p0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->f:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->NO_NETWORK:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->f:Landroid/widget/LinearLayout;

    new-array v1, v4, [Lcom/wandoujia/p4/tips/TipsType;

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->NO_NETWORK:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    .line 150
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->e:Lfrq;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->e:Lfrq;

    invoke-virtual {v0, v4}, Lfrq;->cancel(Z)Z

    .line 153
    :cond_2
    new-instance v0, Lfrq;

    invoke-direct {v0, p0, v3}, Lfrq;-><init>(Lcom/wandoujia/p4/feedback/FeedbackListActivity;B)V

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->e:Lfrq;

    .line 154
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->e:Lfrq;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfrq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
