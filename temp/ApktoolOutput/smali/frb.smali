.class public final Lfrb;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x21

    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->e(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 504
    const/4 v0, -0x2

    if-eq p4, v0, :cond_9

    .line 505
    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    iget-object v1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v3, 0x7f0e02d6

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v3, 0x7f0e02d7

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 508
    :cond_0
    iget-object v1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    iget-object v3, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v4, 0x7f0e042e

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)V

    .line 514
    :cond_1
    :goto_0
    iget-object v1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->f(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;

    .line 515
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 516
    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 521
    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->e(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 523
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 524
    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 525
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->getTextSize()F

    move-result v0

    const/high16 v5, 0x40a0

    sub-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v4, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 529
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0a00be

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v4, v0, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 532
    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :cond_4
    :goto_3
    return v2

    .line 509
    :cond_5
    iget-object v1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v3, 0x7f0e02ff

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 510
    iget-object v1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    iget-object v3, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v4, 0x7f0e0434

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 511
    :cond_6
    iget-object v1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v3, 0x7f0e02f6

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    iget-object v3, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v4, 0x7f0e042f

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 529
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    .line 534
    :cond_9
    iget-object v1, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->e(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    move-result-object v1

    iget-object v0, p0, Lfrb;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->e(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
