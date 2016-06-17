.class public final Lfqy;
.super Landroid/os/AsyncTask;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {}, Lfru;->a()Lfru;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "first"

    invoke-static {v1, v2}, Lfru;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {}, Lfru;->a()Lfru;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "second"

    invoke-static {v1, v2}, Lfru;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 14
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v12, 0x0

    const v11, 0x7f0e02da

    const v10, 0x7f0e0253

    .line 288
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-array v1, v2, [Lcom/wandoujia/p4/tips/TipsType;

    sget-object v4, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->c(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->e(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->f(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;

    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_3
    const-string v5, "ACTION_FEEDBACK_EBOOK"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "wdj://feedback/ebook"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    iget-object v3, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v3, v11}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v6, 0x7f0e02d8

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v3, v11}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const-string v2, "4_media_ebook"

    invoke-static {v0, v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v3, 0x7f0e02d9

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "PARAM_DATA_ID"

    const-string v3, "PARAM_DATA_ID"

    invoke-virtual {v1, v3, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PARAM_DATA_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "PARAM_DATA_NAME"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, ""

    :cond_5
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string v5, "ACTION_FEEDBACK_VIDEO"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "wdj://feedback/video"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v3, v11}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v3, 0x7f0e0300

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "PARAM_DATA_ID"

    const-string v3, "PARAM_DATA_ID"

    invoke-virtual {v1, v3, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PARAM_DATA_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "PARAM_DATA_NAME"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v0, ""

    :cond_9
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    const-string v5, "ACTION_FEEDBACK_STORAGE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "wdj://feedback/storage"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_b
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->f(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "clearsd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v1

    iget-object v3, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v7, 0x7f0e02fb

    invoke-virtual {v6, v7}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v1

    iget-object v3, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v3, v0}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const-string v1, "clearsd"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    move v0, v2

    :goto_3
    if-nez v0, :cond_6

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v2, v10}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v3, v10}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v2, v10}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const-string v1, "12_others_others"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    const-string v2, "ACTION_FEEDBACK_MUSIC"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "wdj://feedback/music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    iget-object v3, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v5, 0x7f0e02ea

    invoke-virtual {v3, v5}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v6, 0x7f0e02eb

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v5, 0x7f0e02ea

    invoke-virtual {v3, v5}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const-string v2, "18_music_stop"

    invoke-static {v0, v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v3, 0x7f0e02e9

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "PARAM_DATA_ID"

    const-string v3, "PARAM_DATA_ID"

    invoke-virtual {v1, v3, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PARAM_DATA_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "PARAM_DATA_NAME"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v0, ""

    :cond_f
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_10
    const-string v2, "ACTION_FEEDBACK_SEARCH"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "wdj://feedback/search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_11
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v5, 0x7f0e02f7

    invoke-virtual {v3, v5}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v3, 0x7f0e02f5

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    const-string v0, "PARAM_DATA_ID"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "PARAM_DATA_ID"

    if-nez v0, :cond_12

    const-string v0, ""

    :cond_12
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PARAM_DATA_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "PARAM_DATA_NAME"

    if-nez v0, :cond_13

    const-string v0, ""

    :cond_13
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PARAM_DATA_TYPE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "PARAM_DATA_TYPE"

    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    iget-object v1, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_17
    move v0, v3

    goto/16 :goto_3
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lfqy;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 293
    return-void
.end method
