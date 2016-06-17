.class public Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;
.super Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;
.source "FeedBackDialogActivity.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ListView;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f0e02d5

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->setTitle(I)V

    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    const-string v0, "comments"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->getAudits()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a:Ljava/util/List;

    .line 56
    const-string v0, "comments"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->isClosed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->d:Z

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->getTicket_id()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/wandoujia/p4/configs/Config;->b(J)I

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->getTicket_id()J

    move-result-wide v0

    iget-object v2, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/configs/Config;->a(JI)V

    .line 61
    invoke-static {}, Lfru;->a()Lfru;

    move-result-object v0

    iget v1, v0, Lfru;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lfru;->a:I

    .line 63
    :cond_1
    new-instance v1, Lfrc;

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lfrc;-><init>(Ljava/util/List;)V

    .line 64
    const v0, 0x7f0c0131

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->c:Landroid/widget/ListView;

    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    const v0, 0x7f0c012f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->b:Landroid/widget/EditText;

    .line 67
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 69
    const v0, 0x7f0c0130

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    iget-boolean v1, p0, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->d:Z

    if-eqz v1, :cond_2

    .line 72
    const v1, 0x7f0c012e

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 74
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    :cond_2
    new-instance v1, Lfqs;

    invoke-direct {v1, p0}, Lfqs;-><init>(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0e02e7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 120
    invoke-static {}, Lfru;->a()Lfru;

    move-result-object v0

    iget v0, v0, Lfru;->a:I

    .line 121
    if-lez v0, :cond_0

    .line 122
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v0}, Ld;->c(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 126
    invoke-virtual {p0, v4}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Lfp;->a(Landroid/view/MenuItem;I)V

    .line 133
    :goto_0
    return v3

    .line 129
    :cond_0
    const v0, 0x7f0c003f

    invoke-virtual {p0, v4}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020220

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Lfp;->a(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0c003f

    if-ne v1, v2, :cond_0

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    :goto_0
    return v0

    .line 142
    :cond_0
    const v1, 0x7f0e02d5

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->finish()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->onBackPressed()V

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onResume()V

    .line 156
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->invalidateOptionsMenu()V

    .line 159
    :cond_0
    return-void
.end method
